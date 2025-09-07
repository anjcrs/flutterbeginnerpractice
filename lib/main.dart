import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Home(), // Now Home() can be correctly found
    ),
  );
}

// Define the Home class OUTSIDE the main function
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Icon(
          Icons.airport_shuttle,
          color: Colors.lightBlue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Text(
          "click",
        ),
      ),
    );
  }
}

