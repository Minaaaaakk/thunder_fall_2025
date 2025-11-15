import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String username = 'Админ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(username: username),
    );
  }
}


class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Нүүр хуудас')),
      body: Center(
        child: WelcomeMessage(username: username),
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  final String username;

  const WelcomeMessage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Text('Тавтай морил, $username!');
  }
}