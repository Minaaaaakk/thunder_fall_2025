import 'package:flutter/material.dart';
import 'package:session_04_flutter/exercises/Image_gallery_exercise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGalleryExercise(),
    );
  }
}