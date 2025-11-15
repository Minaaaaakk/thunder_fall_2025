import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_16_flutter/provider/exercise3.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Counter Demo', home: HomeScreen());
  }
}
