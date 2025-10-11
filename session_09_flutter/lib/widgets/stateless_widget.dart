import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String myName = 'Minjin';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(myName),
        SizedBox(height: 20),
        TextButton(onPressed: () {
          print(myName);
          myName = 'My name changed';
          print(myName);
        }, child: Text('Click me')),
      ],
    );
  }
}
