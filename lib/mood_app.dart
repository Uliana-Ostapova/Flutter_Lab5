import 'dart:math';
import 'package:flutter/material.dart';
import 'mood_card.dart';
import 'gradient_container.dart';

final random = Random();

class MoodApp extends StatefulWidget {
  const MoodApp({super.key});

  @override
  State<MoodApp> createState() {
    return _MoodAppState();
  }
}

class _MoodAppState extends State<MoodApp> {
  int currentIndex = 0;

  final List<String> moods = [
    'Радость',
    'Спокойствие',
    'Грусть',
    'Раздражение',
  ];

  final List<String> images = [
    'assets/images/happy.jpg',
    'assets/images/calm.jpg',
    'assets/images/sad.jpg',
    'assets/images/anger.png',
  ];

  final List<Color> color1 = [
    Colors.yellow,
    Colors.grey,
    Colors.lightBlueAccent,
    Colors.red,
  ];

  final List<Color> color2 = [
    Colors.lightGreen,
    Colors.teal,
    Colors.indigo,
    Colors.orange,
  ];

  void changeMood() {
    setState(() {
      currentIndex = random.nextInt(moods.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        color1: color1[currentIndex],
        color2: color2[currentIndex],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MoodCard(
                images[currentIndex],
                moods[currentIndex],
              ),
              SizedBox(height: 25),
              TextButton(
                onPressed: changeMood,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 24),
                ),
                child: Text('Изменить настроение'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}