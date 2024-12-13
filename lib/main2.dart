import 'package:flutter/material.dart';
import 'package:myapp/points.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Screen App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: PointsPage(), // Use Points widget here
    );
  }
}
