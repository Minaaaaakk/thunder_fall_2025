import 'package:flutter/material.dart';
class Exercise5 extends StatelessWidget {
  const Exercise5({super.key});

  @override
  Widget build(BuildContext context) {
    final String greeting = "Дэлгэцнээс сайн уу!";
    return Scaffold(
      body: Center(
        child: Text(greeting),
      ),
    );
  }
}
