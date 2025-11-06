import 'package:flutter/material.dart';
import 'package:session_14_flutter/Login_Page_State.dart';
import 'package:session_14_flutter/exercise1.dart';
import 'package:session_14_flutter/exercise10.dart';
import 'package:session_14_flutter/exercise2.dart';
import 'package:session_14_flutter/exercise3.dart';
import 'package:session_14_flutter/exercise4.dart';
import 'package:session_14_flutter/exercise5.dart';
import 'package:session_14_flutter/exercise6.dart';
import 'package:session_14_flutter/exercise7.dart';
import 'package:session_14_flutter/exercise8.dart';
import 'package:session_14_flutter/exercise9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Exercise10(),
    );
  }
}