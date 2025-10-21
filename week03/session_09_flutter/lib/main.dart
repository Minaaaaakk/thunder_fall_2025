import 'package:flutter/material.dart';
import 'package:session_09_flutter/widgets/stateful_widget.dart';
import 'package:session_09_flutter/widgets/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyWidgetStateful(),
      ),
    );
  }
}
