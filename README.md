# BookNook

Flutter app with a minimal Java WebSocket backend.

## Backend (Java WebSocket)

Backend lives in `backend-java/`. It provides a simple echo server at `/ws`.

### Run backend

1. Install JDK 17+
2. Open a terminal in `backend-java/`
3. If you have Gradle installed, run:

```
gradle run
```

Server starts on `ws://localhost:8080/ws`.

### Build fat jar

```
gradle shadowJar
java -jar build/libs/backend-java-all.jar
```

## Flutter app

Run the Flutter app as usual:

```
flutter pub get
flutter run
```

Configure the WebSocket URL in `lib/services/ws_client.dart` if needed.

Notes:
- Android emulator cannot reach `localhost`; use `ws://10.0.2.2:8080/ws`.
- For a real device, replace host with your PC's LAN IP.

