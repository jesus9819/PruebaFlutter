import 'package:flutter/material.dart';
import '../../data/task_repository_impl.dart';
import '../../domain/models/task.dart';

class TaskProvider extends ChangeNotifier {
  final _repo = TaskRepositoryImpl();
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  Future<void> loadTasks() async {
    _tasks = await _repo.getTasks();
    notifyListeners();
  }

  Future<void> addTask(String title) async {
    await _repo.insertTask(Task(title: title));
    await loadTasks();
  }

  Future<void> updateTask(Task task) async {
    await _repo.updateTask(task);
    await loadTasks();
  }

  Future<void> deleteTask(int id) async {
    await _repo.deleteTask(id);
    await loadTasks();
  }

  Future<void> toggleTask(Task task) async {
    task.isCompleted = !task.isCompleted;
    await _repo.updateTask(task);
    await loadTasks();
  }
}