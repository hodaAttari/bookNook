import 'package:flutter/material.dart';
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
      ),
    );
  }

  void _handleDarkModeSwitch(bool value) {
    setState(() {
      _switchValue = value;
    });
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
