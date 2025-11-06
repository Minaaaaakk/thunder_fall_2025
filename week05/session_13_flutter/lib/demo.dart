import 'package:flutter/material.dart';
class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final _myController = TextEditingController();

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Нэрээ оруулна уу',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Таны бичсэн текст: ${_myController.text}');
              },
              child: Text('Илгээх'),
            ),
          ],
        ),
      ),
    );
  }
}