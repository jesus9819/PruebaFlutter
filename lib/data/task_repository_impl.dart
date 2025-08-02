import '../core/database_helper.dart';
import '../domain/models/task.dart';
import '../domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final dbHelper = DatabaseHelper();

  @override
  Future<List<Task>> getTasks() async {
    final db = await dbHelper.database;
    final maps = await db.query('tasks');
    return maps.map((e) => Task.fromMap(e)).toList();
  }

  @override
  Future<void> insertTask(Task task) async {
    final db = await dbHelper.database;
    await db.insert('tasks', task.toMap());
  }

  @override
  Future<void> updateTask(Task task) async {
    final db = await dbHelper.database;
    await db.update('tasks', task.toMap(), where: 'id = ?', whereArgs: [task.id]);
  }

  @override
  Future<void> deleteTask(int id) async {
    final db = await dbHelper.database;
    await db.delete('tasks', where: 'id = ?', whereArgs: [id]);
  }
}