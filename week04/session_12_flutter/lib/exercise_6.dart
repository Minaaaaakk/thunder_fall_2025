import 'package:flutter/material.dart';

class Exercise6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Icon(Icons.person, size: 35),
            title: Text('Дорж Бат'),
            subtitle: Text('Flutter Хөгжүүлэгч'),
          ),
        ),
      ),
    );
  }
}
