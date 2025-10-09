import 'package:flutter/material.dart';

class Exercise19 extends StatelessWidget {
  const Exercise19({super.key});

  @override
  Widget build(BuildContext context) {
    int notificationCount = -1;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 19')),
      body: Center(
        child: notificationCount > 0
            ? const Icon(Icons.notifications, color: Colors.red, size: 10)
            : null,
      ),
    );
  }
}
