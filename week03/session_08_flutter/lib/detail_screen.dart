import 'package:flutter/material.dart';
import 'package:session_08_flutter/contact.dart';

class DetailScreen extends StatelessWidget {
  final Contact contact;
  const DetailScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(contact.avatarUrl),
                radius: 100,
              ),
              Text('Нэр: ${contact.name}', style: TextStyle(fontSize: 18)),
              Text(
                'Утасны дугаар: ${contact.phone}',
                style: TextStyle(fontSize: 18),
              ),
              Text('Email: ${contact.email}', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
