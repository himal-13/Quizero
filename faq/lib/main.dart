import 'package:flutter/material.dart';
import 'package:quizero/home_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizero'),
          backgroundColor: Colors.blue,
        ),
        body: const HomePage(),
      ),
    );
  }
}
