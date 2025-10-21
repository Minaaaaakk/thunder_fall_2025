import 'package:flutter/material.dart';
class TodoListUiExercise extends StatelessWidget {
  const TodoListUiExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = ['Buy milk', 'Take out trash', 'Check e-mail'];
    return Scaffold(
      appBar: AppBar(title: Text('TodoList'),),
      body: Column(
        children: tasks.map((task) => Row(
          children: [
            Checkbox(value: true, onChanged: (value){}, ),
            Text(task)
          ],
        )).toList())
      );

  }
}
