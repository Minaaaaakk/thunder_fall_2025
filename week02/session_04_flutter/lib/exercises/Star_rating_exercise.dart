import 'package:flutter/material.dart';
class StarRatingExercise extends StatelessWidget {
  const StarRatingExercise({super.key});

  @override
  Widget build(BuildContext context) {
    int rating = 4;
    return Scaffold(
      appBar: AppBar(title: Text('StarRating'),),
      body: Row(
        children: [
          for (int i = 0; i < rating; i++)
            Icon(Icons.star, color: Colors.yellow,),
          for (int i = rating; i < 5; i++)
            Icon(Icons.star, color: Colors.grey,)
        ],
      ),
    );
  }
}
