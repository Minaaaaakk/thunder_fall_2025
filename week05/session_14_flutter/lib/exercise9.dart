import 'package:flutter/material.dart';
class Exercise9 extends StatefulWidget {
  const Exercise9({super.key});

  @override
  State<Exercise9> createState() => _Exercise9State();
}

class _Exercise9State extends State<Exercise9> {
  String _inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Текст оруулна уу',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _inputText.isEmpty
                  ? null
                  : () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Таны оруулсан текст: $_inputText'),
                  ),
                );
              },
              child: const Text('Илгээх'),
            ),
          ],
        ),
      ),
    );
  }
}
