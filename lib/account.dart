import 'package:flutter/material.dart';
import 'package:m/library.dart/Booksyouhaveread.dart';
import 'package:m/registerPage.dart';

// class ProfilePage extends StatelessWidget {
//   final bool switchValue;
//   final ValueChanged<bool> onSwitchChanged;
//   //final bool _value = false;

//   const ProfilePage({
//     Key? key,
//     this.switchValue = false,
//     required this.onSwitchChanged,
//   }) : super(key: key);
class ProfilePage extends StatefulWidget {
  final bool switchValue;
  final ValueChanged<bool> onSwitchChanged;

  const ProfilePage({
    Key? key,
    required this.switchValue,
    required this.onSwitchChanged,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _isDarkMode = widget.switchValue;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
            backgroundColor: Colors.amber[400],
            foregroundColor: Colors.amber[900],
          ),
          // Widget build(BuildContext context) {
          //   return Scaffold(
          //     appBar: AppBar(
          //       title: Text('Profile'),
          //       backgroundColor: Colors.amber[400],
          //       foregroundColor: Colors.amber[900],
          //     ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_-F5MnondBYYYp5K0IkAniGjEU0TDZD0wt9ygP_I&s'),
              ),
              SizedBox(height: 10),
              Text(
                'user name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    _buildListItem1(
                      context,
                      'Current Credit: \$100',
                      Icons.attach_money,
                      onTap: () {},
                    ),
                    _buildListItem(
                      context,
                      'Increase Credit',
                      Icons.payment,
                      onTap: () {},
                    ),
                    _buildListItem(
                      context,
                      'Special Account',
                      Icons.star,
                      onTap: () {},
                    ),
                    _buildListItem(
                      context,
                      'Books You Have Read',
                      Icons.library_books,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookGrid2()),
                        );
                      },
                    ),
                    _buildListItem2(
                      context,
                      'Dark mode',
                      Icons.dark_mode,
                      onTap: () {},
                      switchValue: _isDarkMode,
                      onSwitchChanged: (value) {
                        setState(() {
                          _isDarkMode = value;
                          widget.onSwitchChanged(value);
                        });
                      },
                    ),
                    // _buildListItem2(
                    //   context,
                    //   'Dark mode',
                    //   Icons.dark_mode,
                    //   onTap: () {},
                    //   switchValue: switchValue,
                    //   onSwitchChanged: (value) {
                    //     debugPrint('Switch value changed to: $value');
                    //     onSwitchChanged(value);
                    //   },
                    // ),
                    // _buildListItem2(
                    //   context,
                    //   'Dark mode',
                    //   Icons.dark_mode,
                    //   onTap: () {},
                    //   switchValue: switchValue,
                    //   onSwitchChanged: onSwitchChanged,
                    // ),
                    _buildListItem(
                      context,
                      'Sign out',
                      Icons.arrow_back,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildListItem(BuildContext context, String title, IconData iconData,
      {required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        if (title == 'Increase Credit'||title=='Special Account') {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Enter amount'),
                content: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    hintText: 'Enter amount',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    onPressed: () {
                      // Perform the credit increase
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        } else {
          onTap();
        }
      },
    );
  }

  Widget _buildListItem1(BuildContext context, String title, IconData iconData,
      {required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title),
      onTap: onTap,
    );
  }

  Widget _buildListItem2(BuildContext context, String title, IconData iconData,
      {required VoidCallback onTap,
      required bool switchValue,
      required void Function(bool) onSwitchChanged}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(iconData),
      title: Text(title),
      trailing: Switch(
        value: switchValue,
        onChanged: onSwitchChanged,
        activeColor: Colors.amber,

      ),
    );
  }
  // Widget _buildListItem2(BuildContext context, String title, IconData iconData,
  //     {required VoidCallback onTap,
  //     bool switchValue = false,
  //     required ValueChanged<bool> onSwitchChanged}) {
  //   return ListTile(
  //     leading: Icon(iconData),
  //     title: Text(title),
  //     trailing: Switch(
  //       value: switchValue,
  //       onChanged: onSwitchChanged,
  //       activeColor: Colors.amber,
  //     ),
  //     onTap: onTap,
  //   );
  // }
}
