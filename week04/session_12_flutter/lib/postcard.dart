import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final Map<String, dynamic> postData;

  const PostCard({super.key, required this.postData});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.postData['avatarUrl']),
              child: Text(widget.postData['username'][0].toUpperCase()),
            ),
            title: Text(
              widget.postData['username'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          Image.network(
            widget.postData['imageUrl'] ??
            'https://placehold.co/600x400/EEE/31343C?text=Post+Image',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                ),
                SizedBox(width: 10),
                Icon(Icons.comment_outlined),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            child: Text(widget.postData['caption']),
          ),
        ],
      ),
    );
  }
}
