import 'package:flutter/material.dart';
import 'package:session_08_flutter/contact.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact(name: 'Дорж', phone: '9999XXXX', email: 'dorj@email.com', avatarUrl: 'https://images.unsplash.com/photo-1728577740843-5f29c7586afe?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760'),
      Contact(name: 'Тулга', phone: '8811XXXX', email: 'tulga@email.com', avatarUrl: 'https://images.unsplash.com/photo-1740252117070-7aa2955b25f8?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760'),
      Contact(name: 'Сараа', phone: '8888XXXX', email: 'saraa@email.com', avatarUrl: 'https://images.unsplash.com/photo-1740252117027-4275d3f84385?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760')
    ];
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];

              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(contact.avatarUrl),),
                title: Text(contact.name),
                subtitle: Text(contact.phone),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(contact: contact),
                    ),
                  );
                },
              );
            },
        ));
  }
}
