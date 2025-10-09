import 'package:flutter/material.dart';
class Exercise10 extends StatelessWidget {
  const Exercise10({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "Дорж";
    final int age = 22;
    final String hometown = "Улаанбаатар";
    return Scaffold(
      appBar: AppBar(
        title: Text('$name-ийн танилцуулга'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Нэр: $name'),
            SizedBox(height: 10),
            Text('Нас: $age'),
            SizedBox(height: 10),
            Text('Төрсөн хот: $hometown'),
          ],
        ),
      ),
    );
  }
}
