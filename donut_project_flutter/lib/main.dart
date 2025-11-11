import 'package:donut_project_flutter/Start_Screen.dart';
import 'package:donut_project_flutter/pages/DonatsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DonatPage(),
      ),
    );
  }
}