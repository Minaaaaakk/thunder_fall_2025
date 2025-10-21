import 'package:flutter/material.dart';
class SimpleColumnExercises extends StatelessWidget {
  const SimpleColumnExercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SimpleColumnExercises')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('First line'),
        Text('Second line'),
        Text('Third line')],
      ),
    );
  }
}
