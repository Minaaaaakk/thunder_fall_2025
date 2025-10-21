import 'package:flutter/material.dart';
class Exercise15 extends StatelessWidget {
  const Exercise15({super.key});

  @override
  Widget build(BuildContext context) {
    final String comment = "Би Flutter сурч байна!";
    final commentLength = comment.length;
    print("Сэтгэгдлийн урт: $commentLength тэмдэгт.");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 15')));
  }
}
