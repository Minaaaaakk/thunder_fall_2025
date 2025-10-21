import 'package:flutter/material.dart';
import 'screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScreenOne')),
      body: Center(
        child: ElevatedButton(
          child: Text('Дараах'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenTwo()),
            );
          },
        ),
      ),
    );
  }
}