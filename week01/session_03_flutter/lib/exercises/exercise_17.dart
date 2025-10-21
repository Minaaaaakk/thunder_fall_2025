import 'package:flutter/material.dart';
class Exercise17 extends StatelessWidget {
  const Exercise17({super.key});

  @override
  Widget build(BuildContext context) {
    int itemsInCart = 5;
    double totalPrice = 4500.50;
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 17')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Items in cart: $itemsInCart"),
            SizedBox(height: 10),
            Text("Total price of items: $totalPrice"),
            SizedBox(height: 10),
          ],
        ),
      ),

    );
  }
}
