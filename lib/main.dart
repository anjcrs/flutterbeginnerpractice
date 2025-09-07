import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Todo List App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text( // The Text widget is the child of Center
          "No tasks yet!!!",
          style: TextStyle( // Apply the TextStyle to the Text widget
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.red,
            fontFamily: 'RobotoMono',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Text("click"), // It's good practice to make this an Icon for FABs
        // e.g., child: Icon(Icons.add)
      ),
    ),
  ));
}
