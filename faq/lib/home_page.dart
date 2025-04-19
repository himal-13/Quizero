import 'package:flutter/material.dart';
import 'package:quizero/components/did_you_know.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DidYouKnow()

      ],
    );
  }
}
