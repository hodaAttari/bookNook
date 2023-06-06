import 'package:flutter/material.dart';
import 'package:m/library.dart/Favorites.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        foregroundColor: Colors.amber[900],
        title: Text('Library'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0L8o8sZxjQZbP01lUyZ7wCIJGUQ7_FFRONg&usqp=CAU',
                text: 'Fiction',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookGrid1()),
                  );
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSihO4Z03GO3awbOuA8EaGEGH1TNpIn4gM3Kg&usqp=CAU',
                text: 'Science',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPUMOdNIH8_YUvJkdTlVzo6bM1cFYCRQYDVA&usqp=CAU',
                text: 'philosophy',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzLMzoMaLDSHnSkrxPJpbTKQTY78ngu-OClg&usqp=CAU',
                text: 'Art',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv2ixnLGUZABsMQDA_QiIEMQRfOA1RKfvgUg&usqp=CAU',
                text: 'Business',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQST37owJgnJCA71Cw9mnQJkKcVWQuDeBRjHg&usqp=CAU',
                text: 'Travel',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-aSy3JCbeS5GDUGMpumSGOTEZ5cCbPC7EbA&usqp=CAU',
                text: 'History',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4K_JJcQzP-q1iHUAK10dpGLTpIbEjrbcVsw&usqp=CAU',
                text: 'Sport',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ESd08qGZHWzzG3PTiNzYqiJPLGBH_ReDbg&usqp=CAU',
                text: 'Religion',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
            SizedBox(
              height: 150, // Set the desired width here
              child: ClickableCard(
                backgroundImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFWNl4TiTBJUdmqkO75GfZ4fXVpR9x91hnUA&usqp=CAU',
                text: 'Cook Books',
                onTap: () {
                  // Handle card tap
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClickableCard extends StatelessWidget {
  var backgroundImage;
  var text;
  final VoidCallback onTap;

  ClickableCard({
    required this.backgroundImage,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 10.0,
        margin: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
