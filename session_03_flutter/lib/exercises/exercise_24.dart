import 'package:flutter/material.dart';
class Exercise24 extends StatefulWidget {
  const Exercise24({super.key});

  @override
  State<Exercise24> createState() => _Exercise24State();
}

class _Exercise24State extends State<Exercise24> {
  String inputText = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Column(
          children: [
            Center(
              child: TextField(
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                   ),
              labelText: "Nuuts ug"
            ),
            onChanged: (input) {
              setState(() {
                inputText = input;
              });
              print(inputText);
            },
          ),
        ),
            if(inputText.length < 8)
              Text(inputText, style: TextStyle(color: Colors.red),)
    ],
        )),
    );
  }
}
