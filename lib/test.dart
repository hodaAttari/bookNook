import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  bool _liked = false;
  bool _bought = false;
  bool _downloaded = false;
  bool _opened = false;
  bool _read = false;
  double _rating = 4.5;
  int _numRatings = 100;

  void _toggleLiked() {
    setState(() {
      _liked = !_liked;
    });
  }

  void _toggleBought() {
    setState(() {
      _bought = !_bought;
    });
  }

  void _toggleDownloaded() {
    setState(() {
      _downloaded = !_downloaded;
    });
  }

  void _toggleOpened() {
    setState(() {
      _opened = !_opened;
    });
  }

  void _toggleRead() {
    setState(() {
      _read = !_read;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Name'),
        backgroundColor: Colors.amber[400],
        //foregroundColor: Colors.amber[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const FadeInImage(
              placeholder: NetworkImage(
                  'https://fidibo.com/images/books/square/129563_70486_normal.jpg?width=200'),
              image: NetworkImage(
                  'https://fidibo.com/images/books/square/129563_70486_normal.jpg?width=200'),
              width: 100,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Book Name',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'By Writer Name',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_half,
                        size: 16,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '$_rating ($_numRatings ratings)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        icon: Icon(
                          _liked ? Icons.favorite : Icons.favorite_border,
                          color: _liked ? Colors.red : null,
                        ),
                        onPressed: _toggleLiked,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    child: Text(_bought ? 'Bought' : 'Buy'),
                    onPressed: _toggleBought,
                    // style: ElevatedButton.styleFrom(
                    //   primary: Colors.amber[400],
                    //   onPrimary: Colors.amber[900],
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20),
                    //     side: BorderSide(
                    //       color: Colors.red
                    //       ),
                    //   ),
                    // )
                  ),
                  SizedBox(height: 8),
                  if (_bought && !_downloaded)
                    ElevatedButton(
                      child: Text('Download'),
                      onPressed: _toggleDownloaded,
                      // style: ElevatedButton.styleFrom(
                      //   primary: Colors.amber[400],
                      //   onPrimary: Colors.amber[900],
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(20),
                      //     side: BorderSide(
                      //       color: Colors.red,
                      //     ),
                      //   ),
                      // )
                    ),
                  if (_downloaded)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              child: Text(_opened ? 'Opened' : 'Open'),
                              onPressed: _toggleOpened,
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: ElevatedButton(
                              child: Text(_read ? 'Read' : 'Start Reading'),
                              onPressed: _toggleRead,
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Summary',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Here is a brief summary of the book.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Book Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Here is some information about the book.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'User Reviews',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('1.'),
                                SizedBox(width: 10),
                                Flexible(
                                  child: LinearProgressIndicator(
                                    value: _rating / 10,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('2.'),
                                SizedBox(width: 10),
                                Flexible(
                                  child: LinearProgressIndicator(
                                    value: _rating / 5,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('3.'),
                                SizedBox(width: 10),
                                Flexible(
                                  child: LinearProgressIndicator(
                                    value: _rating / 10,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('4.'),
                                SizedBox(width: 10),
                                Flexible(
                                  child: LinearProgressIndicator(
                                    value: _rating / 20,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('5.'),
                                SizedBox(width: 10),
                                Flexible(
                                  child: LinearProgressIndicator(
                                    value: _rating / 40,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                            //  Padding(
                            //   padding: EdgeInsets.only(bottom: 10),
                            //   child:LinearProgressIndicator(
                            //   value: _rating / 10,
                            //   backgroundColor: Colors.grey[300],
                            //   valueColor:
                            //       AlwaysStoppedAnimation<Color>(Colors.amber),
                            // ),)
                            // ,
                            // Padding(
                            //   padding: EdgeInsets.only(bottom: 10),
                            //   child:LinearProgressIndicator(
                            //   value: _rating / 5,
                            //   backgroundColor: Colors.grey[300],
                            //   valueColor:AlwaysStoppedAnimation<Color>(Colors.amber),
                            //   ),),
                            //   Padding(
                            //   padding: EdgeInsets.only(bottom: 10),
                            //   child:LinearProgressIndicator(
                            //   value: _rating / 10,
                            //   backgroundColor: Colors.grey[300],
                            //   valueColor:AlwaysStoppedAnimation<Color>(Colors.amber),
                            //   ),),
                            //   Padding(
                            //   padding: EdgeInsets.only(bottom: 10),
                            //   child:LinearProgressIndicator(
                            //   value: _rating / 6,
                            //   backgroundColor: Colors.grey[300],
                            //   valueColor:AlwaysStoppedAnimation<Color>(Colors.amber),
                            //   ),),
                            //  Padding(
                            //   padding: EdgeInsets.only(bottom: 10),
                            //   child:LinearProgressIndicator(
                            //   value: _rating / 20,
                            //   backgroundColor: Colors.grey[300],
                            //   valueColor:AlwaysStoppedAnimation<Color>(Colors.amber),
                            //   ),)
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: LinearProgressIndicator(
                      //     value: _rating / 10,
                      //     backgroundColor: Colors.grey[300],
                      //     valueColor:
                      //         AlwaysStoppedAnimation<Color>(Colors.amber),
                      //   ),
                      //   child: LinearProgressIndicator(
                      //     value: _rating / 10,
                      //     backgroundColor: Colors.grey[300],
                      //     valueColor:
                      //         AlwaysStoppedAnimation<Color>(Colors.amber),
                      //   ),
                      // ),
                      SizedBox(width: 8),
                      Text(
                        '$_rating',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '($_numRatings ratings)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('User 1'),
                    subtitle: Text('This book was amazing!'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('User 2'),
                    subtitle: Text('I really enjoyed reading this book.'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   String userName = "John Doe";
//   int currentCredit = 100;
//   String profileImage = "https://via.placeholder.com/150";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage(profileImage),
//             ),
//             SizedBox(height: 10),
//             Text(
//               userName,
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Current Credit: $currentCredit",
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 FlatButton(
//                   onPressed: () {
//                     // Exit button pressed                  },
//                   color: Colors.red,
//                   child: Text("Exit")),
//                 FlatButton(
//                   onPressed: () {
//                     // Increase credit button pressed
//                   },
//                   color: Colors.green,
//                   child: Text("Increase Credit"),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 FlatButton(
//                   onPressed: () {
//                     // Special account button pressed
//                   },
//                   color: Colors.blue,
//                   child: Text("Special Account"),
//                 ),
//                 FlatButton(
//                   onPressed: () {
//                     // Books you have read button pressed
//                   },
//                   color: Colors.orange,
//                   child: Text("Books You Have Read"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
