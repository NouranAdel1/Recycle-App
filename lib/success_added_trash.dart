import 'package:flutter/material.dart';
import 'dart:math'; // For generating random positions

class SuccessAddedTrash extends StatelessWidget {
  const SuccessAddedTrash({super.key});

  // Function to generate random circle positions
  List<Widget> _generateLimeCircles() {
    Random random = Random();
    List<Widget> circles = [];
    for (int i = 0; i < 20; i++) {
      double size =
          random.nextDouble() * 100 + 30; // Random size between 30 and 130
      double xPos = random.nextDouble() * 500; // Random X position
      double yPos = random.nextDouble() * 800; // Random Y position
      circles.add(Positioned(
        left: xPos,
        top: yPos,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: const Color.fromARGB(218, 218, 232, 176),
            shape: BoxShape.circle,
          ),
        ),
      ));
    }
    return circles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Set the app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Back button icon
          onPressed: () {
            Navigator.of(context).pop(); // Pop the current screen off the stack
          },
        ),
      ),
      backgroundColor: Colors.green, // Green background
      body: Stack(
        children: [
          // Random lime circles in the background
          ..._generateLimeCircles(),

          // Centered Column with checkmark and text
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                  size: 120, // Large checkmark icon
                ),
                SizedBox(height: 20),
                Text(
                  'Successed!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'The trash has been sent.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
