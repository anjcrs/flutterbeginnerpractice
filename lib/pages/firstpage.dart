import 'package:flutter/material.dart';
import 'package:flutterbeginnerpractice/pages/homepage.dart';
import 'package:flutterbeginnerpractice/pages/profile.dart';
import 'package:flutterbeginnerpractice/pages/settings.dart';

class FirstPage extends StatefulWidget {
  // Changed to UpperCamelCase
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
// this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new  selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pages we have in our app
  final List _pages = const [
    // homepage
    Homepage(),

    // profilepage
    Profile(),

    //settings
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('First Page')
        ),
        body: _pages[_selectedIndex],
        drawer: Drawer(
          backgroundColor: Colors.purple,
          child: Column(
            children: [
              // common to place a drawer heeder here
              DrawerHeader(
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 40,
                  color: Colors.red,
                ),
              ),

              // Homepage list title


              // settings list title
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
                onTap: () {
                  // go to home page
                  Navigator.pushNamed(context, '/homepage');
                },
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            // HOME
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),

            // PROFILE
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),

            // SETTINGS
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings'
            ),
          ],
        )
    );
  }
}
