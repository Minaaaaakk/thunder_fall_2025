import 'package:flutter/material.dart';
class Exercise3 extends StatelessWidget {
  const Exercise3({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = false;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 3'),),
      body: Center(
        child: Text(isLoggedIn? 'Welcome!' : 'LogIn', style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
