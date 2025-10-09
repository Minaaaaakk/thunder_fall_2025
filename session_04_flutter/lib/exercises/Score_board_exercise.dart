import 'package:flutter/material.dart';
class ScoreBoardExercise extends StatelessWidget {
  const ScoreBoardExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> playerScores = [{'player': 'Player 1', 'score': 150}, {'player': 'Player 2', 'score': 200}];
    return Scaffold(
      appBar: AppBar(title: Text('ScoreBoard'),),
      body: Column(
        children: playerScores.map((player) {return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(player['player']), Text('${player['score']}')],
        );}).toList(),
      ),
    );
  }
}
