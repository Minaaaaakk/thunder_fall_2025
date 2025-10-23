import 'package:flutter/material.dart';
class Exercise4 extends StatelessWidget {
  const Exercise4({super.key});

  @override
  Widget build(BuildContext context) {
    bool isWifiOn = false;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 3'),),
      body: Center(
        child: isWifiOn? Icon(Icons.wifi, color: Colors.green, size: 64,) : Icon(Icons.wifi_off, color: Colors.red, size: 64),
      ),
    );
  }
}
