import 'package:flutter/material.dart';

class Exercise8 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тооны жагсаалт')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(title: Text('Элемент: ${index + 1}'));
        },
      ),
    );
  }
}
