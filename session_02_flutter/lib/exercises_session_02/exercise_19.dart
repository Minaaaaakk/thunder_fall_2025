import 'package:flutter/material.dart';
class Exercise19 extends StatelessWidget {
  const Exercise19({super.key});

  @override
  Widget build(BuildContext context) {
    final int score = 45;
    final int totalScore = 50;
    final double percentage = (score / totalScore) * 100;
    print("Таны дүн: $score/$totalScore ($percentage%).");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 19')));
  }
}
