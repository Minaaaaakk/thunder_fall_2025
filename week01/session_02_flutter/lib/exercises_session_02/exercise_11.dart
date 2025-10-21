import 'package:flutter/material.dart';
class Exercise11 extends StatelessWidget {
  const Exercise11({super.key});

  @override
  Widget build(BuildContext context) {
    final int apples = 10;
    final int oranges = 5;
    final totalFruit = apples + oranges;
    print("Нийт жимсний тоо: $totalFruit");
    final difference = apples - oranges;
    print("Алим жүржээс $difference-аар илүү.");

    return Scaffold(appBar: AppBar(title: Text('Дасгал 11')));
  }
}
