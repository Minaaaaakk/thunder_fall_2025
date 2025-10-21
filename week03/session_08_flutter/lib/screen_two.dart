import 'package:flutter/material.dart';
import 'screen_one.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScreenTwo')),
      body: Center(
        child: ElevatedButton(
          child: Text('Буцах'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
