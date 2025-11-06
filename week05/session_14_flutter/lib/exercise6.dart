import 'package:flutter/material.dart';
class Exercise6 extends StatefulWidget {
  const Exercise6({super.key});

  @override
  State<Exercise6> createState() => _Exercise6State();
}

class _Exercise6State extends State<Exercise6> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(Duration(seconds: 3));
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Амжилттай нэвтэрлээ!')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Нэвтрэх')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Имэйл'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Имэйлээ оруулна уу.';
                  }
                  else if (!value.contains('@')) {
                    return 'Имэйл буруу форматтай байна.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Нууц үг'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Нууц үгээ оруулна уу.';
                  }
                  if (value.length < 6) {
                    return 'Нууц үг дор хаяж 6 тэмдэгттэй байх ёстой.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                onPressed: _login,
                child: Text('Нэвтрэх'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
