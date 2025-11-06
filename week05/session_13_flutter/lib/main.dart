import 'package:flutter/material.dart';
import 'package:session_13_flutter/Live_Screen.dart';
import 'package:session_13_flutter/My_Notes_App.dart';
import 'package:session_13_flutter/Search_Screen.dart';
import 'package:session_13_flutter/demo.dart';
import 'package:session_13_flutter/memory_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LiveScreen(),
    );
  }
}