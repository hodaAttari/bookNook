// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Row(
//         children: [
//           Container(
//             width: 80.0,
//             color: Colors.amber[400],
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.home),
//                   onPressed: () {},
//                   color: Colors.amber[800],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.account_circle),
//                   onPressed: () {},
//                   color: Colors.amber[800],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.library_books),
//                   onPressed: () {},
//                   color: Colors.amber[800],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: () {},
//                   color: Colors.amber[800],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.favorite),
//                   onPressed: () {},
//                   color: Colors.amber[800],
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.shopping_cart),
//                   onPressed: () {},
//                   color: Colors.amber[800],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Center(
//                   child: Text('HomePage'),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }