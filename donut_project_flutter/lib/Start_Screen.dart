import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Smoothie_Screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3F3),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/StartScreen.png',
                height: 208.86,
                width: 208.86,
              ),
              SizedBox(height: 55),
              SizedBox(
                width: 303,
                height: 85,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmoothieScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFDAF2),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Start',
                    style: GoogleFonts.nunito(
                      fontSize: 64,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFF57AC8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
