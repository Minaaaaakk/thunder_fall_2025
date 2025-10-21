import 'package:flutter/material.dart';
import 'package:session_08_flutter/contact.dart';
import 'home_screen.dart';

class DetailScreen extends StatelessWidget {
  final Contact contact;
  const DetailScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details'),),
    );
  }
}
