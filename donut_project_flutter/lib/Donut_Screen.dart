import 'package:donut_project_flutter/Donut_Detail_Screen.dart';
import 'package:donut_project_flutter/Smoothie_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  final String name;
  final String price;
  final String imagePath;
  final Color color;
  final priceTagColor;
  final priceTextColor;
  final String subtitle;
  Item(
    this.name,
    this.price,
    this.imagePath,
    this.color,
    this.priceTagColor,
    this.priceTextColor,
    this.subtitle,
  );
}

class DonutScreen extends StatelessWidget {
  final List<Item> donuts = [
    Item(
      'Ice cream',
      '\$36',
      'assets/IceCream.png',
      Color(0xFFCAE1FF),
      Color(0xFFA3C9FC),
      Color(0xFF2884FF),
      'Dunkins',
    ),
    Item(
      'Strawberry',
      '\$45',
      'assets/StrawberryDonut.png',
      Color(0xFFFFD6D6),
      Color(0xFFFFC4C4),
      Color(0xFFFA8585),
      'Dunkins',
    ),
    Item(
      'Choco Mint',
      '\$55',
      'assets/ChocoMint.png',
      Color(0xFFD1FFD0),
      Color(0xFFB6FFB5),
      Color(0xFF72CD70),
      'Dunkins',
    ),
    Item(
      'Banana',
      '\$65',
      'assets/BananaDonut.png',
      Color(0xFFFEFFBA),
      Color(0xFFFBFE83),
      Color(0xFFD3D55B),
      'Dunkins',
    ),
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
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                _buildCategoryTab(
                  context,
                  label: 'Smoothie',
                  isSelected: false,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmoothieScreen()),
                    );
                  },
                ),
                SizedBox(width: 40),
                _buildCategoryTab(
                  context,
                  label: 'Donut',
                  isSelected: true,
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 30),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: donuts.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DonutDetailScreen(item: donuts[index]),
                        ),
                      );
                    },
                    child: _DonutItemCard(item: donuts[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTab(
    BuildContext context, {
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFC1DCFF) : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 30,
            fontWeight: isSelected ? FontWeight.w800 : FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class _DonutItemCard extends StatelessWidget {
  final Item item;
  const _DonutItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: item.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(item.imagePath),
                  ),
                ),
                Center(
                  child: Text(
                    item.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(item.subtitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Heart.png', width: 25, height: 25),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.add, color: Colors.black, size: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: item.priceTagColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                item.price,
                style: TextStyle(
                  color: item.priceTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
