import 'package:donut_project_flutter/components/Product.dart';
import 'package:donut_project_flutter/data/donat_data.dart';
import 'package:donut_project_flutter/widgets/DonatWidget.dart';
import 'package:flutter/material.dart';

class DonatPage extends StatelessWidget {
  const DonatPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> products = [];
    for (var i = 0; i < smoothies.length; i++) {
      Map<String, dynamic> smoothie = smoothies[i];
      var product = Product(
        name: smoothie['name'],
        price: smoothie['price'],
        imageUrl: smoothie['imageUrl'],
        backgroundColor: smoothie['backgroundColor'],
      );
      var productWidget = DonatWidget(product: product);
      products.add(productWidget);
    }
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [products[0], products[1]]),
          Row(children: [products[2], products[3]])
        ],
      ),
    );
  }
}
