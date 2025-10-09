import 'package:flutter/material.dart';
class Exercise21 extends StatefulWidget {
  const Exercise21({super.key});

  @override
  State<Exercise21> createState() => _Exercise21State();
}

class _Exercise21State extends State<Exercise21> {
  bool isLiked = false;

  void _incrementCounter() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(isLiked ? "товч дарсан" : "товч дараагүй"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,
      child: const Icon(Icons.favorite),),
    );
  }
}
