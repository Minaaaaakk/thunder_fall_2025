import 'dart:math';
import 'package:flutter/material.dart';
class DecisionPage extends StatefulWidget {
  const DecisionPage({super.key});

  @override
  State<DecisionPage> createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  String _decisionText = 'Таны шийдвэр...';
  Color _backgroundColor = Colors.white;
  void _makeDecision() {
    final List<String> options = ["Тийм!", "Үгүй!", "Магадгүй?"];
    final int randomIndex = Random().nextInt(options.length);
    final String randomAnswer = options[randomIndex];
    setState(() {
      _decisionText = randomAnswer;
      if (randomAnswer == "Тийм!") {
        _backgroundColor = Colors.green;}
      else if (randomAnswer == "Үгүй!") {
        _backgroundColor = Colors.red;}
      else {
        _backgroundColor = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text('Шийдвэр Гаргагч'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _decisionText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _makeDecision,
                child: Text('Шийдвэр гаргах'),
            ),
          ],
        ),
      ),
    );
  }
}
