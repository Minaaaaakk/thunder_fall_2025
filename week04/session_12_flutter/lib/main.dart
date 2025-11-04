import 'package:flutter/material.dart';
import 'package:session_12_flutter/exercise_10.dart';
import 'package:session_12_flutter/exercise_6.dart';
import 'package:session_12_flutter/exercise_7.dart';
import 'package:session_12_flutter/exercise_8.dart';
import 'package:session_12_flutter/exercise_9.dart';
import 'package:session_12_flutter/project.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Project(),
    );
  }
}