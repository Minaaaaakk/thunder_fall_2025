import 'package:flutter/material.dart';
class ContactListExercise extends StatelessWidget {
  const ContactListExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> contacts = ['Bataa', 'Dorj', 'Tsetsgee'];
    return Scaffold(
      appBar: AppBar(title: Text('ContactList'),),
      body: Column(
        children: contacts.map((contact) {return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [CircleAvatar(),
          Text(contact),
          Icon(Icons.phone)],
        );}).toList(),
      ),
    );
  }
}
