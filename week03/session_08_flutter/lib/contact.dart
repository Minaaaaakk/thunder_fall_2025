import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  final String avatarUrl;

  const Contact({
    required this.name,
    required this.phone,
    required this.email,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
