import 'package:flutter/material.dart';
class Exercise6 extends StatelessWidget {
  const Exercise6({super.key});

  @override
  Widget build(BuildContext context) {
    final int favoriteNumber = 7;
    return Scaffold(
      body: Center(
        child: Text('Миний дуртай тоо: ${favoriteNumber.toString()}'),
      ),
    );
  }
}
