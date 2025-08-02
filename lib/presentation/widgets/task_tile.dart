import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/task.dart';
import '../providers/task_provider.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({required this.task});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskProvider>(context, listen: false);

    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(
            decoration: task.isCompleted ? TextDecoration.lineThrough : null),
      ),
      leading: Checkbox(
        value: task.isCompleted,
        onChanged: (_) => provider.toggleTask(task),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => provider.deleteTask(task.id!),
      ),
    );
  }
}