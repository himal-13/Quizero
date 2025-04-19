import 'package:flutter/material.dart';

class DidYouKnow extends StatefulWidget {
  const DidYouKnow({super.key});

  @override
  State<DidYouKnow> createState() => _DidYouKnowState();
}

class _DidYouKnowState extends State<DidYouKnow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
 
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Did you know?'),
              Icon(Icons.menu_book),

            ],
          ),
          
        ],
      ),
    );
  }
}
