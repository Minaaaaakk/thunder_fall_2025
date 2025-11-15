import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _username = "Зочин";
  void _changeName(String newName) {
    setState(() {
      _username=newName;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ProfileSection(
          username: _username,
          onNameChange: _changeName,
        ),
      );
  }
}

class ProfileSection extends StatelessWidget {
  final String username;
  final Function(String) onNameChange;

  const ProfileSection({
    required this.username,
    required this.onNameChange,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Нэвтэрсэн хэрэглэгч: $username",
              style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          ChangeNameButton(
            onPressed: onNameChange,
          ),
        ],
      ),
    );
  }
}

class ChangeNameButton extends StatelessWidget {
  final Function(String) onPressed;

  const ChangeNameButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Нэр Өөрчлөх"),
      onPressed: () {
        onPressed("Шинэ хэрэглэгч");
      },
    );
  }
}

