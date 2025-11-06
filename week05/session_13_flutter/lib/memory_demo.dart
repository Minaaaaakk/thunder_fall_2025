import 'package:flutter/material.dart';

class MemoryDemo extends StatefulWidget {
  @override
  State<MemoryDemo> createState() => _MemoryDemoState();
}

class _MemoryDemoState extends State<MemoryDemo> {
  final List<String> _savedTexts = [];
  final TextEditingController _myController = TextEditingController();

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  void _addText() {
    final text = _myController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _savedTexts.add(text);
        _myController.clear();
      });
    }
  }

  @override
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
                labelText: 'Нэрээ оруулна уу',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(onPressed: _addText, child: Text('➕ Нэмэх')),

            const SizedBox(height: 20),

            Expanded(
              child: _savedTexts.isEmpty
                  ? Center(
                      child: Text(
                        'Одоогоор ямар ч мэдээлэл алга 😅',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: _savedTexts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.message, color: Colors.blue),
                          title: Text(_savedTexts[index]),
                          trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                _savedTexts.removeAt(index);
                              });
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
