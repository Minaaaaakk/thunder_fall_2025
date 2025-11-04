import 'package:flutter/material.dart';
class PostCard extends StatelessWidget {
  final Map<String, String> postData;
  const PostCard({required this.postData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Text(postData['username']![0])),
            title: Text(postData['username']!),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(postData['caption']!),
          ),
        ],
      ),
    );
  }
}
