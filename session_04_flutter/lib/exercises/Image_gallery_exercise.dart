import 'package:flutter/material.dart';

class ImageGalleryExercise extends StatelessWidget {
  const ImageGalleryExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageURLs = [
      'https://plus.unsplash.com/premium_photo-1750175087969-67dc766d9df2?q=80&w=2342&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1758801304977-fbb605f3858f?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1754764464593-638adca1eb4f?q=80&w=2150&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ];
    return Scaffold(
      appBar: AppBar(title: Text('ImageGallery')),
      body: Column(
        children: imageURLs.map((image) {
          return Image.network(image);
        }).toList(),
      ),
    );
  }
}
