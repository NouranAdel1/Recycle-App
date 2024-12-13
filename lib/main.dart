// main.dart
import 'package:flutter/material.dart';
import 'package:myapp/change_profile_page.dart';
import 'package:myapp/contact_us_page.dart';
import 'package:myapp/history_page.dart';
import 'package:myapp/intro_page.dart';
import 'package:myapp/navi_bar_page.dart';
import 'package:myapp/profile_page.dart';
import 'package:myapp/recycle_main_page.dart';
import 'package:myapp/shipment_info.dart';
import 'package:myapp/splash_page.dart';
import 'package:myapp/success_added_trash.dart';
// Import the new RecycleMainPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          color: Colors.green, // AppBar background color (can be customized)
          iconTheme: IconThemeData(color: Colors.white), // AppBar icons white
          titleTextStyle:
              TextStyle(color: Colors.white, fontSize: 20), // AppBar text white
        ),
      ),

      home: SplashPage(), // Set RecycleMainPage as the starting page
    );
  }
}
