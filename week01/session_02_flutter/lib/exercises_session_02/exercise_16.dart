import 'package:flutter/material.dart';
class Exercise16 extends StatelessWidget {
  const Exercise16({super.key});

  @override
  Widget build(BuildContext context) {
    final String originalText = "Dart Програмчлал";
    final upperCaseText = originalText.toUpperCase();
    print("Том үсгээр: $upperCaseText");
    final lowerCaseText = originalText.toLowerCase();
    print("Жижиг үсгээр: $lowerCaseText");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 16')));
  }
}
