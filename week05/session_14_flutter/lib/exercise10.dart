import 'package:flutter/material.dart';
class Exercise10 extends StatefulWidget {
  const Exercise10({super.key});

  @override
  State<Exercise10> createState() => _Exercise10State();
}

class _Exercise10State extends State<Exercise10> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;
  bool _isPasswordVisible = false;
  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(const Duration(seconds: 3));
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ Амжилттай нэвтэрлээ!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Имэйл',
                      hintText: 'Имэйл хаягаа оруулна уу',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Имэйлээ оруулна уу!';
                      } else if (!value.contains('@')) {
                        return 'Имэйл буруу байна. Жишээ: user@mail.com';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Нууц үг',
                      hintText: 'Нууц үгээ оруулна уу',
                      prefixIcon: const Icon(Icons.lock),
                      border: const OutlineInputBorder(),
                      errorStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Нууц үгээ оруулна уу!';
                      } else if (value.length < 6) {
                        return 'Нууц үг дор хаяж 6 тэмдэгттэй байх ёстой.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  _isLoading
                      ? const CircularProgressIndicator()
                      : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _login,
                      child: const Text('Нэвтрэх'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

