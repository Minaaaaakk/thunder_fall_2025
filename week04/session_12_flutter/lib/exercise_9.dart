import 'package:flutter/material.dart';

class Exercise9 extends StatelessWidget {
  final List<String> posts = List.generate(10, (index) => 'Пост ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Миний Блог')),
      body: ListView.separated(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(posts[index], style: TextStyle(fontSize: 16)),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
      ),
    );
  }
}
