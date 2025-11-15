import 'package:flutter/material.dart';
import '../models/todo.dart';
class TodoProvider extends ChangeNotifier {
  List<Todo> _tasks = [];
  List<Todo> get tasks => _tasks;
  int get unfinishedTasksCount => _tasks.where((task) => !task.isDone).length;

  void addTask(String title) {
    final newTask = Todo(id: DateTime.now().toString(), title: title);
    _tasks.add(newTask);
    notifyListeners();
  }