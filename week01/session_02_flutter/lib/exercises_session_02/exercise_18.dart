import 'package:flutter/material.dart';
class Exercise18 extends StatelessWidget {
  const Exercise18({super.key});

  @override
  Widget build(BuildContext context) {
    final String originalMessage = "Би кофе уумаар байна.";
    final newMessage = originalMessage.replaceAll("кофе", "цай");
    print("Шинэ зурвас: $newMessage");
    return Scaffold(appBar: AppBar(title: Text('Дасгал 18')));
  }
}
