import 'package:flutter/material.dart';
class ListWithIndexExercise extends StatelessWidget {
  const ListWithIndexExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> texts = ['First', 'Medium', 'Last'];
    return Scaffold(
      appBar: AppBar(title: Text('ListWithIndex'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: texts.asMap().entries.map((entry) {
          int index = entry.key;
          String text = entry.value;
          return Text('Index $index: $text');
        }).toList(),
      ),
    );
  }
}
