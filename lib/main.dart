import 'package:flutter/material.dart';
import 'package:flutterbeginnerpractice/pages/firstpage.dart';

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
      },
    );
  }
}
