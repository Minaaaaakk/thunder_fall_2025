import 'package:flutter/material.dart';
class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    String firstname = 'Дорж';
    String lastname = 'Болд';
    String fullname = '$lastname-ын $firstname';
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 1'),),
      body: Center(
        child: Text(fullname, style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
