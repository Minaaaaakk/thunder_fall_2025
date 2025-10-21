import 'package:flutter/material.dart';
class Exercise8 extends StatelessWidget {
  const Exercise8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              SizedBox(width: 8),
              Text('Одтой текст'),
            ],
        ),
      ),
    );
  }
}
