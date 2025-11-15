import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String username = "Админ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: WelcomeMessage(username: username),
        ),
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  final String username;
  const WelcomeMessage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Тавтай морил, $username!', textAlign: TextAlign.center, style: TextStyle(fontSize: 24),),
      ],
    );
  }
}
