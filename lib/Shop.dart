import 'package:flutter/material.dart';
import 'package:m/Book/bookinformation.dart';
import 'package:m/library.dart/Favorites.dart';

class Bookshop extends StatefulWidget {
  @override
  _BookshopState createState() => _BookshopState();
}

class _BookshopState extends State<Bookshop> {
  String _selectedGenre = "All";
  String _selectedSort = "Most Popular";
  List<String> _genres = [
    "All",
    "Fiction",
    "Non-Fiction",
    "Mystery",
    "Thriller",
    "Romance"
  ];
  List<String> _books = [
    "Book 1",
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
    "Book 15",
  ];

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bookshop'),
          //iconTheme: ,
          backgroundColor: Colors.amber[400],
          foregroundColor: Colors.amber[900],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            // child: Container(
            //   foregroundDecoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //     gradient: LinearGradient(
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //       colors: [
            //         Colors.red.withOpacity(0.3),
            //         Colors.yellow.withOpacity(0.3)
            //       ],
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.amber),
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  fillColor: Colors.amber[400],
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _searchController.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ),
          //),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                //   child: Container(
                // foregroundDecoration: BoxDecoration(
                //   borderRadius: BorderRadius.all(Radius.circular(10)),
                //   gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: [
                //       Colors.red.withOpacity(0.3),
                //       Colors.yellow.withOpacity(0.3)
                //     ],
                //   ),
                // ),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.amber),
                //   borderRadius: BorderRadius.all(Radius.circular(10)),
                // ),
                child: DropdownButton(
                  value: _selectedGenre,
                  items: _genres.map((String genre) {
                    return DropdownMenuItem(
                      value: genre,
                      child: Text(
                        genre,
                        textAlign: TextAlign.center,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? selectedGenre) {
                    setState(() {
                      _selectedGenre = selectedGenre!;
                    });
                  },
                ),
              ),
              //),
              Expanded(
                // child: Container(
                //   foregroundDecoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(10)),
                //     gradient: LinearGradient(
                //       begin: Alignment.topLeft,
                //       end: Alignment.bottomRight,
                //       colors: [
                //         Colors.red.withOpacity(0.3),
                //         Colors.yellow.withOpacity(0.3)
                //       ],
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.amber),
                //     borderRadius: BorderRadius.all(Radius.circular(10)),
                //   ),
                  child: DropdownButton(
                    value: _selectedSort,
                    items: <String>[
                      "None",
                      "Most Popular",
                      "Most Expensive",
                      "Cheapest"
                    ].map((String sort) {
                      return DropdownMenuItem(
                        value: sort,
                        child: Text(
                          sort,
                          textAlign: TextAlign.center,
                        ),
                      );
                    }).toList(),
                    onChanged: (String? selectedSort) {
                      setState(() {
                        _selectedSort = selectedSort!;
                      });
                    },
                  ),
                ),
              //)
            ],
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(16.0),
                  //color: Colors.grey[200],
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ListView.builder(
                    itemCount: _books.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (_selectedGenre != "All" &&
                          !_books[index].contains(_selectedGenre)) {
                        return SizedBox.shrink();
                      }
                      return ListTile(
                        title: Text(_books[index]),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookPage()),
                          );
                        },
                        trailing: Icon(Icons.arrow_forward_ios),
                      );
                    },
                  )))
        ]));
  }
}
