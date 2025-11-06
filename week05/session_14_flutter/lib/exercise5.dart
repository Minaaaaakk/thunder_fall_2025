import 'package:flutter/material.dart';
class Exercise5 extends StatefulWidget {
  const Exercise5({super.key});

  @override
  State<Exercise5> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  bool _isLoading = false;

  void _startLoading() {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: _isLoading
              ? const CircularProgressIndicator()
              : ElevatedButton(
            onPressed: _startLoading,
            child: const Text('Ачаалал эхлүүлэх'),
          ),
        ),
      );
    }
  }
