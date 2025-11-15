import 'package:flutter/material.dart';
import '../providers/todo_provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Миний Даалгаврууд')),
      body: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.tasks.length,
            itemBuilder: (context, index) {
              final task = provider.tasks[index];
              return ListTile(
                leading: Icon(
                  provider.tasks[index].isDone
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                ),
                title: Text(
                  provider.tasks[index].title,
                  style: TextStyle(
                    decoration: provider.tasks[index].isDone
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                onTap: () {
                  provider.toggleTask(index);
                },);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<TodoProvider>(context, listen: false)
              .addTask('Шинэ даалгавар ${DateTime.now().second}');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}