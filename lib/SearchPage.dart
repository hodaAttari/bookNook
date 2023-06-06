  import 'package:flutter/material.dart';
  
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {
      _searchQuery = _searchController.text;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Customize the search box colors
    final ThemeData theme = Theme.of(context);

    final ColorScheme colorScheme = theme.colorScheme.copyWith(
      primary: Colors.amber[400], // set primary color to amber
      primaryVariant: Colors.amber[900], // set primary variant color to amber
    );

    final InputDecorationTheme inputDecorationTheme =
        theme.inputDecorationTheme.copyWith(
      hintStyle: TextStyle(color: colorScheme.primary),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primaryVariant),
      ),
    );

    return Theme(
      data: theme.copyWith(
        colorScheme: colorScheme,
        inputDecorationTheme: inputDecorationTheme,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[400],
          foregroundColor: Colors.amber[900],
          title: TextField(
            controller: _searchController,
            cursorColor: Colors.amber[900],
            decoration: InputDecoration(
              hintText: 'Search book, author, etc...',
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform search
                },
                color: colorScheme.primaryVariant, // set search icon color to amber
              ),
            ),
          ),
        ),
        body: Center(
          child: _searchQuery.isEmpty
              ? Text('Enter a search query')
              : Text('Search results for: $_searchQuery'),
        ),
      ),
    );
  }
}
