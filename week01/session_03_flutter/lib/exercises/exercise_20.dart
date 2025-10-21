import 'package:flutter/material.dart';
class Exercise20 extends StatelessWidget {
  const Exercise20({super.key});

  @override
  Widget build(BuildContext context) {
    bool isBatteryLow = true;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 20')),
      body: Center(
        child: isBatteryLow ? const Icon(Icons.battery_alert, color: Colors.red, size: 30,) : const Icon(Icons.battery_full, color: Colors.green,size: 30),
      ),
    );
  }
}
