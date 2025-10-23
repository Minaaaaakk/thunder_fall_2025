import 'package:flutter/material.dart';
import 'package:session_10_flutter/exercise1.dart';
import 'package:session_10_flutter/exercise2.dart';
import 'package:session_10_flutter/exercise3.dart';
import 'package:session_10_flutter/exercise4.dart';
import 'package:session_10_flutter/exercise5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Exercise5(),
    );
  }
}