import 'package:flutter/material.dart';
import 'intro_page.dart'; // Replace with the actual page after the splash screen

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // After 3 seconds, navigate to the IntroPage
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set a background color if you want
      body: Container(
        width: double.infinity, // Stretch to full screen width
        height: double.infinity, // Stretch to full screen height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image4.jpg'), // Image from assets
            fit: BoxFit.cover, // Ensure the image covers the entire screen
          ),
        ),
      ),
    );
  }
}
