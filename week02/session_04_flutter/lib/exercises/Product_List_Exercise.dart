import 'package:flutter/material.dart';
class ProductListExercise extends StatelessWidget {
  const ProductListExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> productInfo = [{'name': 'Apple', 'price': 2500}, {'name': 'Bread', 'price': 1800}];
    return Scaffold(
      appBar: AppBar(title: Text('ProductList'),),
      body: Column(
        children: productInfo.map((product) =>  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(product['name']), Text('${product['price']}')]
          )).toList(),
      ),
    );
  }
}
