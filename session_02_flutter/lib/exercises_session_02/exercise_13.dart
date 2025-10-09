import 'package:flutter/material.dart';
class Exercise13 extends StatelessWidget {
  const Exercise13({super.key});

  @override
  Widget build(BuildContext context) {
    final int totalCandies = 25;
    final int children = 4;
    final remainingCandies = totalCandies % children;
    print("$totalCandies чихрийг $children хүүхдэд хуваахад $remainingCandies үлдэнэ.");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 13')));
  }
}
