import 'package:flutter/material.dart';
import 'dart:async';
import 'package:m/services/ws_client.dart';
import 'package:m/start/HomePage.dart';
import 'package:m/start/LoginScreen.dart';
import 'package:m/account.dart';
import 'package:m/registerPage.dart';
import 'package:m/library.dart/Favorites.dart';
import 'package:m/test.dart';
import 'package:m/view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('This is the home page'),
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  final WebSocketClient _wsClient = WebSocketClient();
  StreamSubscription? _wsSub;
  String? _lastMessage;
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.amber[800],
    // other theme properties...
  );

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber[600],
    // other theme properties...
  );

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    bool isDarkModeEnabled = _switchValue;
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      title: 'BookNook Login UI',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('BookNook Login UI'),
        // ),
        body: Column(
          children: [
            // SwitchListTile(
            //   title: Text('Dark Mode'),
            //   onChanged: (value) {
            //     _handleDarkModeSwitch(value);
            //   },
            //   value: _switchValue,
            // ),
            Expanded(
              child: LoginScreen(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _handleWsTest,
          child: Icon(Icons.wifi),
          tooltip: 'WS Test',
        ),
      ),
    );
  }

  void _handleDarkModeSwitch(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  Future<void> _handleWsTest() async {
    await _wsClient.connect();
    _wsSub ??= _wsClient.stream?.listen((event) {
      _lastMessage = event?.toString();
      final msg = _lastMessage ?? 'no message';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('WS: ' + msg)),
      );
    });
    _wsClient.send('hello');
  }

  @override
  void dispose() {
    _wsSub?.cancel();
    _wsClient.close();
    super.dispose();
  }
}
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//   final lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.amber[800],
//     // other theme properties...
//   );

//   final darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Colors.amber[600],
//     // other theme properties...
//   );
//   bool _switchValue = false;
//   @override
//   Widget build(BuildContext context) {
//     bool isDarkModeEnabled = _switchValue;
//     return MaterialApp(
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       //themeMode: ThemeMode.dark,
//       themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
//       title: 'BookNook Login UI',
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
//   void _handleDarkModeSwitch(bool value) {
//     setState(() {
//       _switchValue = value;
//     });
//   }
// }
