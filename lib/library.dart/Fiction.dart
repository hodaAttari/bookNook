import 'package:flutter/material.dart';
import 'package:m/Book/bookinformation.dart';

class BookGrid extends StatelessWidget {
  final List<String> bookNames = [
    "Sophie's World",
    "Book 2",
    "Book 3",
    "Book 4",
    "Book 5",
    "Book 6",
    "Book 7",
    "Book 8",
    "Book 9",
    "Book 10",
    "Book 11",
    "Book 12",
    "Book 13",
    "Book 14",
  ];

  final List<String> bookImages = [
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/62882_79534_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/64664_88543_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/99791_82810_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/157913_15585_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/65190_44421_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
    "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        foregroundColor: Colors.amber[900],
        title: Text('Fiction'),
      ),
      body: GridView.builder(
        itemCount: bookNames.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          borderRadius:
          BorderRadius.circular(10.0);
          return GestureDetector(
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookPage()),
                  );
              // Handle the click event here
              print("You tapped on ${bookNames[index]}");
            },
            child: Column(
              children: [
                Image.network(
                  bookImages[index],
                  height: 150,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text(
                  bookNames[index],
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
