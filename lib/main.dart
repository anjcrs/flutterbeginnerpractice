import 'package:flutter/material.dart';
import 'package:flutterbeginnerpractice/pages/firstpage.dart';
import 'package:flutterbeginnerpractice/pages/homepage.dart';
import 'package:flutterbeginnerpractice/pages/settings.dart';

void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => Homepage(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
