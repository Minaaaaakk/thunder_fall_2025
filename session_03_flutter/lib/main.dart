import 'package:flutter/material.dart';
import 'package:session_03_flutter/exercises/exercise_16.dart';
import 'package:session_03_flutter/exercises/exercise_17.dart';
import 'package:session_03_flutter/exercises/exercise_18.dart';
import 'package:session_03_flutter/exercises/exercise_19.dart';
import 'package:session_03_flutter/exercises/exercise_20.dart';
import 'package:session_03_flutter/exercises/exercise_21.dart';
import 'package:session_03_flutter/exercises/exercise_22.dart';
import 'package:session_03_flutter/exercises/exercise_23.dart';
import 'package:session_03_flutter/exercises/exercise_24.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Exercise24(),
    );
  }
}
