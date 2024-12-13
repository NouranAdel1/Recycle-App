import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set a background color if you want
      body: Container(
        width: double.infinity, // Stretch to full screen width
        height: double.infinity, // Stretch to full screen height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/map.png'), // Image from assets
            fit: BoxFit.cover, // Ensure the image covers the entire screen
          ),
        ),
      ),
    );
  }
}
