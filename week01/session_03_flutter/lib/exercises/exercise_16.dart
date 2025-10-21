import 'package:flutter/material.dart';
class Exercise16 extends StatelessWidget {
  const Exercise16({super.key});

  @override
  Widget build(BuildContext context) {
    final String myName = "Дорж";
    print(myName);
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 16')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myName),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
