import 'package:flutter/material.dart';
class CardWithListExercise extends StatelessWidget {
  const CardWithListExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> topics = ['Сэдэв 1', 'Сэдэв 2', 'Сэдэв 3'];
    return Scaffold(
      appBar: AppBar(title: Text('CardWithList'),),
      body: Card(
        child: Column(
          children: [
            Text("Хичээлийн сэдвүүд", style: TextStyle(fontSize: 32)),
            for (var topic in topics)
              Text('$topic', style: TextStyle(fontSize: 24),)
          ],
        ),
      ),
    );
  }
}
