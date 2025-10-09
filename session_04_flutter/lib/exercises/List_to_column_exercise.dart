import 'package:flutter/material.dart';
class ListToColumnExercise extends StatelessWidget {
  const ListToColumnExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> text = ['Sun', 'Moon', 'Star'];
    return Scaffold(
      appBar: AppBar(title: Text('ListToColumnExercise'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: text.map((item) {return Text(item, style: TextStyle(fontSize: 24),);}).toList(),
    )
    );
  }
}
