import 'dart:math';

import 'package:flutter/material.dart';

const List<String> facts = [
  "A day on Venus is longer than a year on Venus! It takes 243 Earth days to spin once but only 225 days to orbit the Sun.",
  "There’s a planet (55 Cancri e) made of diamond! 💎 It’s twice Earth’s size and covered in graphite and diamond.",
  "A year on Mercury is just 88 days long! It’s the closest planet to the Sun and has a very short orbit.",
  "Your brain generates enough electricity to power a light bulb! (About 20 watts).",
  "Cows have best friends and get stressed when separated.",
  "The “404 error” is named after a real room (Room 404) at CERN where early web servers were kept.",
  "Your stomach acid can dissolve metal! (But please don’t test this.)",
  "You glow in the dark! Humans emit tiny amounts of light (but it’s too faint to see).",
  "Your nose can remember 50,000 different scents! 👃",
  "Babies have about 60 more bones than adults! (They fuse together as you grow.)",
  "Cleopatra lived closer to the invention of the iPhone than to the building of the Great Pyramid! 🏗️📱",
  "The shortest war in history lasted 38 minutes (Britain vs. Zanzibar in 1896).",
  "A single cloud can weigh as much as 100 elephants! ☁️🐘",
  "The Eiffel Tower grows 6 inches in summer because metal expands in heat.",
  "A sneeze travels up to 100 mph! 💨",

];

class DidYouKnow extends StatefulWidget {
  const DidYouKnow({super.key});

  @override
  State<DidYouKnow> createState() => _DidYouKnowState();
}

class _DidYouKnowState extends State<DidYouKnow> {

  String currestFact = facts[Random().nextInt(facts.length)];

  void _generateFact() {
    setState(() {
      currestFact = facts[Random().nextInt(facts.length)];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
 
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Did you know?', style: TextStyle(fontSize: 12),),
              Icon(Icons.menu_book, size: 20,),

            ],
          ),
          const SizedBox(height: 10),
          Text('"$currestFact"',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: _generateFact,
                child: const Text('Random Fact', style: TextStyle(fontSize: 12),),
              ),
            ],
          ),

          
        ],
      ),
    );
  }
}
