import 'package:flutter/material.dart';
class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    final int birthYear = 1995;
    final int currentYear = 2025;
    final int age = currentYear - birthYear;

    print("Та ойролцоогоор $age настай.");

    return Container();
  }
}
