import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  // Changed to UpperCamelCase
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
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
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
            ),
          ],
        ),
      ),
    );
  }
}
