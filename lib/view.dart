import 'package:flutter/material.dart';
import 'package:m/SearchPage.dart';
import 'package:m/Shop.dart';
import 'package:m/account.dart';
import 'package:m/library.dart/Favorites.dart';
import 'package:m/library.dart/library%20.dart';
import 'package:m/main.dart';
import 'package:m/test.dart';
import 'package:m/view.dart';
import 'package:flutter/material.dart';
import 'package:m/library.dart/Booksyouhaveread.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class WebViewPage extends StatelessWidget {
//   final String url;

//   const WebViewPage({Key? key, required this.url}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(url)),
//       body: InAppWebView(
//         initialUrlRequest: URLRequest(url: Uri.parse(url)),
//       ),
//     );
//   }
// }

// class BookstoreHomePage extends StatefulWidget {
//   @override
//   _BookstoreHomePageState createState() => _BookstoreHomePageState();
// }

// class _BookstoreHomePageState extends State<BookstoreHomePage>
//     with TickerProviderStateMixin {
//   List<String> bookSlides = [
//     'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//     'https://newcdn.fidibo.com/img/Slides/shakoori-sale.jpg',
//     'https://newcdn.fidibo.com/images/custom/0202101%20(1).jpg'
//   ];
//   final List<String> websiteUrls = [
//     'https://fidibo.com/landings/kelidar/?utm_source=fidibo-site&utm_medium=landing&utm_campaign=kelidar',
//     'https://fa.wikipedia.org/wiki/%DA%A9%DB%8C%D9%87%D8%A7%D9%86_%DA%A9%D9%84%D9%87%D8%B1',
//     'https://fidibo.com/landings/campaign-mojtabashakoo',
//     // add more URLs here for additional photos
//   ];
//   List<Section> sections = [
//   Section(
//     title: 'a',
//     books: [
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 1',
//       ),
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 2',
//       ),
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 3',
//       ),
//     ],
//   ),
//   Section(
//     title: 'b',
//     books: [
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 4',
//       ),
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 5',
//       ),
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 6',
//       ),
//     ],
//   ),
//   Section(
//     title: 'c',
//     books: [
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 4',
//       ),
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 5',
//       ),
//       Book(
//         imageUrl: 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//         title: 'Book 6',
//       ),
//     ],
//   ),
//   // Add more sections as needed
// ];
//   int currentSlideIndex = 0;
//   bool _darkModeEnabled = false;
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData.light(),
//         darkTheme: ThemeData.dark(),
//         themeMode: _darkModeEnabled ? ThemeMode.dark : ThemeMode.light,
//         home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.amber[400],
//             foregroundColor: Colors.amber[900],
//             title: Text(
//               'BookNook',
//               style: TextStyle(
//                 fontFamily: 'MonteCarlo',
//                 fontSize: 24,
//                 fontWeight: FontWeight.normal,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//           ),
//           drawer: SafeArea(
//             child: Drawer(
//               child: ListView(
//                 physics: NeverScrollableScrollPhysics(),
//                 children: <Widget>[
//                   ListTile(
//                     title: Text("profile"),
//                     leading: Icon(Icons.person),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ProfilePage(
//                             switchValue: _darkModeEnabled,
//                             onSwitchChanged: (value) {
//                               setState(() {
//                                 _darkModeEnabled = value;
//                               });
//                             },
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                   ListTile(
//                     title: Text("library"),
//                     leading: Icon(Icons.library_books),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => MyPage()),
//                       );
//                     },
//                   ),
//                   ListTile(
//                     title: Text("search"),
//                     leading: Icon(Icons.search),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => SearchPage()),
//                       );
//                     },
//                   ),
//                   ListTile(
//                     title: Text("favorites"),
//                     leading: Icon(Icons.favorite),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => BookGrid1()),
//                       );
//                     },
//                   ),
//                   ListTile(
//                     title: Text("shop"),
//                     leading: Icon(Icons.shopping_cart),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Bookshop()),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 // Book Slides
//                 Stack(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => WebViewPage(
//                                   url: websiteUrls[currentSlideIndex])),
//                         );
//                       },
//                       child: Container(
//                         height: 200,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(bookSlides[currentSlideIndex]),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 80,
//                       left: 0,
//                       right: 0,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.arrow_back_ios),
//                             onPressed: () {
//                               setState(() {
//                                 currentSlideIndex = (currentSlideIndex -
//                                         1 +
//                                         bookSlides.length) %
//                                     bookSlides.length;
//                               });
//                             },
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.arrow_forward_ios),
//                             onPressed: () {
//                               setState(() {
//                                 currentSlideIndex =
//                                     (currentSlideIndex + 1) % bookSlides.length;
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Tab Bar
//                 TabBar(
//                   controller: _tabController,
//                   tabs: [
//                     Tab(
//                       child: Text(
//                         'Audio Books',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 143, 140, 140),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'E Books',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 143, 140, 140),
//                         ),
//                       ),
//                     ),
//                   ],
//                   indicator: BoxDecoration(
//                     border: Border(
//                       bottom: BorderSide(
//                         color: Colors.amber, // set indicator color to yellow
//                         width: 4.0, // set indicator width
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Tab Views
//                 Container(
//                   height: 300,
//                   child: TabBarView(controller: _tabController, children: [
//                     // Audio Books
//                     ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: sections.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 sections[index].title,
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Row(
//                                 children: [
//                                   BookCard(
//                                     key: ValueKey('book1'),
//                                     imageUrl: sections[index].books[0].imageUrl,
//                                     title: sections[index].books[0].title,
//                                   ),
//                                   BookCard(
//                                     key: ValueKey('book2'),
//                                     imageUrl: sections[index].books[1].imageUrl,
//                                     title: sections[index].books[1].title,
//                                   ),
//                                   BookCard(
//                                     key: ValueKey('book3'),
//                                     imageUrl: sections[index].books[2].imageUrl,
//                                     title: sections[index].books[2].title,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                     // E Books
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           BookCard(
//                             key: ValueKey('book4'),
//                             imageUrl:
//                                 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//                             title: 'Book 4',
//                           ),
//                           BookCard(
//                             key: ValueKey('book5'),
//                             imageUrl:
//                                 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//                             title: 'Book 5',
//                           ),
//                           BookCard(
//                             key: ValueKey('book6'),
//                             imageUrl:
//                                 'https://newcdn.fidibo.com/img/Slides/kelidar_5-6_WEB.jpg',
//                             title: 'Book 6',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ]),
//                 ),

//                 // Last Book Read
//                 Container(
//                   height: 100,
//                   margin: EdgeInsets.symmetric(vertical: 16),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(width: 16),
//                       Container(
//                         width: 60,
//                         height: 80,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://newcdn.fidibo.com/images/books/64664_88543_normal.jpg?width=200'),
//                             fit: BoxFit.cover,
//                           ),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       SizedBox(width: 16),
//                       Expanded(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Last Book Read',
//                                 style: TextStyle(fontSize: 16)),
//                             Text('Book 7', style: TextStyle(fontSize: 14)),
//                           ],
//                         ),
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.close),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class BookCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;

//   const BookCard(
//       {required Key key, required this.imageUrl, required this.title})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       margin: EdgeInsets.symmetric(horizontal: 8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: 100,
//             height: 140,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage(imageUrl),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 12),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class Section {
//   final String title;
//   final List<Book> books;

//   Section({required this.title, required this.books});
// }

// class Book {
//   final String imageUrl;
//   final String title;

//   Book({required this.imageUrl, required this.title});
// }
