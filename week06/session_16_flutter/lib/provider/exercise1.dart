import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class UserProvider extends ChangeNotifier {
  String _username = "Админ";
  String get username => _username;
  void login(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(child: WelcomeMessage()),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        return Text('Тавтай морил, ${userProvider.username}!',
            style: TextStyle(fontSize: 24));
      },
    );
  }
}