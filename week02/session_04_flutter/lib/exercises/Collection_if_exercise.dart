import 'package:flutter/material.dart';
class CollectionIfExercise extends StatelessWidget {
  const CollectionIfExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final bool showExtra = true;
    final List<String> items = ['A', 'B'];
    return Scaffold(
      appBar: AppBar(title: Text('CollectionIf'),),
      body: Column(
        children: [
          for (var item in items)
            Text(item, style: TextStyle(fontSize: 24),),
          if (showExtra)
            const Text('C', style: TextStyle(fontSize: 24),)
      ]),
    );
  }
}
