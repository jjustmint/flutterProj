import 'package:flutter/material.dart';
import 'package:todo_2/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(primaryColor: Color.fromRGBO(204, 153, 255, 1.0)),
    );
  }
}