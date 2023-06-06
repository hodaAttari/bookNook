import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:m/registerPage.dart';
import 'package:m/start/HomePage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;

  Widget _emailTextField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Email",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.amber[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email, color: Colors.white),
                hintText: 'Enter your Email'),
          ),
        )
      ],
    );
  }

  Widget _passwordTextField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Password",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.amber[800],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: !_showPassword,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock, color: Colors.white),
              hintText: 'Enter your password',
              suffixIcon: IconButton(
                icon: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookstoreHomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Colors.white,
        ),
        child: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.amber[800],
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegistrationPage()),
        );
      },
      child: Text(
        "Don't have an account? Sign up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amber[400]),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to bookNook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _emailTextField(),
                  const SizedBox(
                    height: 10,
                  ),
                  _passwordTextField(),
                  _loginButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  _signUpButton(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//    bool _showPassword = false;
//   Widget _emailTextFiled() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         const Text("Email",
//             textAlign: TextAlign.left,
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//         const SizedBox(
//           height: 10,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Colors.amber[800],
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
//               ]),
//           height: 60,
//           child: TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(color: Colors.white),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Icon(Icons.email, color: Colors.white),
//                 hintText: 'Enter your Email'),
//           ),
//         )
//       ],
//     );
//   }

//   Widget _passwordTextField() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         const Text("Password",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//         const SizedBox(
//           height: 10,
//         ),
//         Container(
//   alignment: Alignment.centerLeft,
//   decoration: BoxDecoration(
//     color: Colors.amber[800],
//     borderRadius: BorderRadius.circular(10),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.black12, 
//         blurRadius: 6, 
//         offset: Offset(0, 2),
//       )
//     ],
//   ),
//   height: 60,
//   child: TextField(
//     obscureText: true,
//     keyboardType: TextInputType.visiblePassword,
//     style: TextStyle(color: Colors.white),
//     decoration: InputDecoration(
//       border: InputBorder.none,
//       contentPadding: EdgeInsets.only(top: 14),
//       prefixIcon: Icon(Icons.lock, color: Colors.white),
//       hintText: 'Enter your password',
//       suffixIcon: IconButton(
//         icon: Icon(
//           _showPassword ? Icons.visibility : Icons.visibility_off,
//         ),
//         onPressed: () {
//           setState(() {
//             _showPassword = !_showPassword;
//           });
//         },
//       ),
//     ),
//   ),
// )
//         // Container(
//         //   alignment: Alignment.centerLeft,
//         //   decoration: BoxDecoration(
//         //       color: Colors.amber[800],
//         //       borderRadius: BorderRadius.circular(10),
//         //       boxShadow: [
//         //         BoxShadow(
//         //             color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
//         //       ],
//         //        suffixIcon: IconButton(
//         //               icon: Icon(
//         //                 _showPassword ? Icons.visibility : Icons.visibility_off,
//         //               ),
//         //               onPressed: () {
//         //                 setState(() {
//         //                   _showPassword = !_showPassword;
//         //                 });
//         //               },
//         //             ),),
//         //   height: 60,
//         //   child: TextField(
//         //     obscureText: true,
//         //     keyboardType: TextInputType.visiblePassword,
//         //     style: TextStyle(color: Colors.white),
//         //     decoration: InputDecoration(
//         //         border: InputBorder.none,
//         //         contentPadding: EdgeInsets.only(top: 14),
//         //         prefixIcon: Icon(Icons.lock, color: Colors.white),
//         //         hintText: 'Enter your password'),
//         //   ),
//         // )
//       ],
//     );
//   }

//   Widget _loginButton() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 25),
//       width: double.infinity,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(color: Colors.amber[400]),
//           ),
//           Container(
//             height: double.infinity,
//             child: SingleChildScrollView(
//               physics: AlwaysScrollableScrollPhysics(),
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'wellcome to bookNook',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const Text(
//                     ' SingIn',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 23,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   _emailTextFiled(),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   _passwordTextField(),
//                   Container(
//                     padding: EdgeInsets.symmetric(vertical: 25),
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => HomePage()),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.all(15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         backgroundColor: Colors.white,
//                       ),
//                       child: Text(
//                         'Sign In',
//                         style: TextStyle(
//                           color: Colors.amber[800],
//                           letterSpacing: 1.5,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Go back to Home Page'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/services.dart';

// class LoginScreen extends StatefulWidget {

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {

//   @override
//   Widget build (BuildContext context){
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: GestureDetector(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color(0xff5ac18e),
//                       Color(0xff5ac18e),
//                       Color(0xff5ac18e),
//                       Color(0xff5ac18e),
//                     ]
//                   )
//                 ),
//               )
//             ],
//           ),
//         ),
//       )
//     )
//   }
// }
