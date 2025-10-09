import 'package:flutter/material.dart';

class ListToRowExercise extends StatelessWidget {
  const ListToRowExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colorOptions = [Colors.red, Colors.green, Colors.blue];
    return Scaffold(
      appBar: AppBar(title: Text('ListToRowExercise')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (var color in colorOptions)
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(4),
              color: color,
            ),
        ],
      ),
    );
  }
}
