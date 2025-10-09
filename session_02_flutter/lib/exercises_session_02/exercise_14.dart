import 'package:flutter/material.dart';
class Exercise14 extends StatelessWidget {
  const Exercise14({super.key});

  @override
  Widget build(BuildContext context) {
    final String start = "Flutter бол";
    final String middle = " ";
    final String end = "гайхалтай!";
    final fullSentence = start + middle + end;
    print(fullSentence);
    
    return Scaffold(appBar: AppBar(title: Text('Дасгал 14')));
  }
}
