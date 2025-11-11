import 'package:donut_project_flutter/components/Product.dart';
import 'package:flutter/material.dart';

class DonatWidget extends StatelessWidget {
  final Product product;
  const DonatWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Text('${product.price}')]),
        Image.asset(product.imageUrl),
        Center(child: Text(product.name)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.heart_broken), Icon(Icons.add)],
        ),
      ],
    );
  }
}
