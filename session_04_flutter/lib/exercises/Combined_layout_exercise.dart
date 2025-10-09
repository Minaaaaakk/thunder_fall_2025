import 'package:flutter/material.dart';
class CombinedLayoutExercise extends StatelessWidget {
  const CombinedLayoutExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colorOptions = [Colors.red, Colors.green, Colors.blue];
    return Scaffold(
      appBar: AppBar(title: Text('CombinedLayoutExercise'),),
      body: Column(
        children: [Text('My favorite color', style: TextStyle(fontSize: 24),),
        Row(
          children: [for (var color in colorOptions)
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(4),
              color: color,),],
        )],
      ),
    );
  }
}
