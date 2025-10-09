import 'package:flutter/material.dart';
class Exercise18 extends StatelessWidget {
  const Exercise18({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = true;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 18')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isLoggedIn ? "Welcome" : "Please Log In"),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
