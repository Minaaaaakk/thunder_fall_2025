import 'package:flutter/material.dart';
import 'package:session_08_flutter/homeScreen1.dart';
import 'package:session_08_flutter/home_screen.dart';
import 'package:session_08_flutter/screen_one.dart';
import 'package:session_08_flutter/three_screens.dart';
import 'package:session_08_flutter/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}