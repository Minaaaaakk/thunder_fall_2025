import 'package:donut_project_flutter/Donut_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  final String name;
  final String price;
  final String imagePath;
  final Color color;
  Item(this.name, this.price, this.imagePath, this.color);
}

class SmoothieScreen extends StatelessWidget {
  final List<Item> smoothies = [
    Item(
      'Blueberry Strawberry',
      '\$36',
      'assets/BlueberryStrawberry.png',
      Color(0xFFCAE1FF),
    ),
    Item('Island Green', '\$65', 'assets/IslandGreen.png', Color(0xFFD1FFD0)),
    Item('Strawberry', '\$45', 'assets/Strawberry.png', Color(0xFFFFD6D6)),
    Item('Banana', '\$35', 'assets/Banana.png', Color(0xFFFEFFBA)),
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
            SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFC1DCFF),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Text(
                  'Smoothie',
                  style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF000000)
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DonutScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Donut',
                    style: GoogleFonts.nunito(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF000000)
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    ),
    ),
    );
  }
}
