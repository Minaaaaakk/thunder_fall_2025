import 'package:flutter/material.dart';
class Exercise17 extends StatelessWidget {
  const Exercise17({super.key});

  @override
  Widget build(BuildContext context) {
    final String sentence = "Би Flutter апп хөгжүүлж байна.";
    bool hasFlutter = sentence.contains("Flutter");
    print("Энэ өгүүлбэрт 'Flutter' гэдэг үг бий юу? - $hasFlutter");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 17')));
  }
}
