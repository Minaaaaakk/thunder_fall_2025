import 'package:flutter/material.dart';

class SimpleRowExercise extends StatelessWidget {
  const SimpleRowExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SimpleRowExercise')),
      body: Row(
        children: [Icon(Icons.home), Icon(Icons.settings), Icon(Icons.person)],
      ),
    );
  }
}
