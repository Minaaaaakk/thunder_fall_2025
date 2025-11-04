import 'package:flutter/material.dart';

class Exercise7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1740252117044-2af197eea287?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760',
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
