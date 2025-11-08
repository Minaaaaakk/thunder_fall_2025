import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  final String name;
  final String price;
  final String imagePath;
  final Color color;
  Item(this.name, this.price, this.imagePath, this.color);
}

class DonutScreen extends StatelessWidget {
  final List<Item> donuts = [
    Item('Ice cream', '\$36', 'assets/IceCream.png', Color(0xFFCAE1FF)),
    Item('Choco Mint', '\$55', 'assets/ChocoMint.png', Color(0xFFD1FFD0)),
    Item('Strawberry', '\$45', 'assets/StrawberryDonut.png', Color(0xFFFFD6D6)),
    Item('Banana', '\$65', 'assets/BananaDonut.png', Color(0xFFFEFFBA)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3F3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFF000000),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/person.png',
              width: 20,
              height: 20,
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I want to eat',
              style: GoogleFonts.nunito(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
