import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  const MoodCard(
    this.imagePath,
    this.mood,
    {super.key,}
  );

  final String imagePath;
  final String mood;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 180,
          height: 180,
        ),
        SizedBox(height: 20,),
        Text(
          mood,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}