import 'package:flutter/material.dart';
class Exercise22 extends StatefulWidget {
  const Exercise22({super.key});

  @override
  State<Exercise22> createState() => _Exercise22State();
}

class _Exercise22State extends State<Exercise22> {
  int counter = 0;
  void _incrementCounter() {
    setState(() {
      counter = counter + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$counter", style: counter > 10 ? TextStyle(color: Colors.red) : null),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,
        child: Icon(Icons.add),),
    );
  }
}
