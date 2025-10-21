import 'package:flutter/material.dart';
class Exercise23 extends StatefulWidget {
  const Exercise23({super.key});

  @override
  State<Exercise23> createState() => _Exercise23State();
}

class _Exercise23State extends State<Exercise23> {
  bool termsAccepted = true;
  bool ageConfirmed = true;
  late bool bothTrue = termsAccepted && ageConfirmed;
  
  void _register() {
    print('register');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: bothTrue ? _register : null, child: Text('Register'))
      ),
    );
  }
}
