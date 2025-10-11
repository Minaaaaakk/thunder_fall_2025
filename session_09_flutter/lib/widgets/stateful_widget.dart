import 'package:flutter/material.dart';
class MyWidgetStateful extends StatefulWidget {
  const MyWidgetStateful({super.key});

  @override
  State<MyWidgetStateful> createState() => _MyWidgetStatefulState();
}

class _MyWidgetStatefulState extends State<MyWidgetStateful> {
  String myName = 'Minjin';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(myName),
        SizedBox(height: 20),
        TextButton(onPressed: () {
          print(myName);
          setState(() {
            myName = 'My name changed';
          });
          print(myName);
        }, child: Text('Click me')),
      ],
    );
  }
}
