import 'package:flutter/material.dart';
class Exercise20 extends StatelessWidget {
  const Exercise20({super.key});

  @override
  Widget build(BuildContext context) {
    final int result = 10 + 5 * 2;
    print("10 + 5 * 2 = $result");
    final int resultWithParentheses = (10 + 5) * 2;
    print("(10 + 5) * 2 = $resultWithParentheses");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 20')));
  }
}
