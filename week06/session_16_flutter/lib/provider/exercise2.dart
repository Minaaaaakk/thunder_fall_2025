import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProvider with ChangeNotifier {
  String _username = "Зочин";

  String get username => _username;

  void changeName(String newName) {
    _username = newName;
    notifyListeners();
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserProvider>(
              builder: (context, userProvider, child) {
                return Text(
                  'Хэрэглэгч: ${userProvider.username}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            ChangeNameButton(),
          ],
        ),
      ),
    );
  }
}

class ChangeNameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<UserProvider>(context, listen: false).changeName("Админ");
      },
      child: Text("Нэр өөрчлөх"),
    );
  }
}
