import 'package:flutter/material.dart';
class GridFromListExercise extends StatelessWidget {
  const GridFromListExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<int>> numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
    return Scaffold(
      appBar: AppBar(title: Text('GridFromList'),),
      body: Column(
        children: [
          for (var row in numbers)
            Row(
              children: [
                for (var num in row)
                  Text('$num', style: TextStyle(fontSize: 32)), ]
            )
        ],
      ),
    );
  }
}
