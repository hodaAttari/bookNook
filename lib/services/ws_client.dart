import 'dart:async';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketClient {
  WebSocketChannel? _channel;
  final String url;
  Stream<dynamic>? get stream => _channel?.stream;

  WebSocketClient({this.url = 'ws://localhost:8080/ws'});

  Future<void> connect() async {
    if (_channel != null) return;
    _channel = WebSocketChannel.connect(Uri.parse(url));
  }

  void send(String message) {
    final channel = _channel;
    if (channel == null) {
      throw StateError('WebSocket not connected');
    }
    channel.sink.add(message);
  }

  Future<void> close() async {
    await _channel?.sink.close();
    _channel = null;
  }
}


