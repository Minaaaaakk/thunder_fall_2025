import 'package:flutter/material.dart';
class Exercise12 extends StatelessWidget {
  const Exercise12({super.key});

  @override
  Widget build(BuildContext context) {
    final double itemPrice = 2500.5;
    final int quantity = 3;
    final totalPrice = itemPrice * quantity;
    print("Нийт дүн: $totalPrice₮");
    final pricePerPerson = totalPrice / 4;
    print("Нэг хүнд ногдох дүн: $pricePerPerson₮");
    
    return Scaffold(appBar: AppBar(title: Text('Дасгал 12')));
  }
}
