package com.booknook.backend;

import io.undertow.Undertow;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.util.Headers;
import io.undertow.websockets.core.AbstractReceiveListener;
import io.undertow.websockets.core.BufferedTextMessage;
import io.undertow.websockets.core.WebSocketChannel;
import io.undertow.websockets.core.WebSockets;
import io.undertow.websockets.spi.WebSocketHttpExchange;
import io.undertow.websockets.WebSocketProtocolHandshakeHandler;
import io.undertow.websockets.WebSocketConnectionCallback;

public class WebSocketServer {
    public static void main(String[] args) {
        int port = 8080;

        WebSocketProtocolHandshakeHandler wsHandler = new WebSocketProtocolHandshakeHandler(new WebSocketConnectionCallback() {
            @Override
            public void onConnect(WebSocketHttpExchange exchange, WebSocketChannel channel) {
                channel.getReceiveSetter().set(new AbstractReceiveListener() {
                    @Override
                    protected void onFullTextMessage(WebSocketChannel channel, BufferedTextMessage message) {
                        String text = message.getData();
                        WebSockets.sendText("echo: " + text, channel, null);
                    }
                });
                channel.resumeReceives();
            }
        });

        HttpHandler root = exchange -> {
            String path = exchange.getRequestPath();
            if ("/ws".equals(path)) {
                wsHandler.handleRequest(exchange);
            } else {
                handleHttp(exchange);
            }
        };

        Undertow server = Undertow.builder()
                .addHttpListener(port, "0.0.0.0")
                .setHandler(root)
                .build();

        server.start();
        System.out.println("WebSocket server started on ws://localhost:" + port + "/ws");
    }

    private static void handleHttp(HttpServerExchange exchange) {
        exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "text/plain");
        exchange.getResponseSender().send("BookNook backend is running. Connect via ws://<host>:8080/ws");
    }
}


