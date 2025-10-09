import 'package:flutter/material.dart';
class Exercise7 extends StatelessWidget {
  const Exercise7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Эхний мөр'),
              Text('Хоёр дахь мөр'),
              Text('Гурав дахь мөр'),
            ],
        ),
      ),
    );
  }
}
