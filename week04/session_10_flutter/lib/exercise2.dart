import 'package:flutter/material.dart';
class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 10.5;
    double height = 20.0;
    double area = width * height;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 2'),),
      body: Center(
        child: Text('Area: $area', style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
