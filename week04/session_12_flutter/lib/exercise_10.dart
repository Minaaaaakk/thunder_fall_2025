import 'package:flutter/material.dart';
import 'package:session_12_flutter/post_card.dart';
class Exercise10 extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {'username': 'boldoo', 'caption': 'Flutter үнэхээр гоё!'},
    {'username': 'saraa', 'caption': 'Миний анхны UI.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCard(postData: posts[index]);
        },
      ),
    );
  }
}