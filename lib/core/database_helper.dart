import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final path = join(await getDatabasesPath(), 'tasks.db');
    return await openDatabase(path, version: 1, onCreate: (db, version) {
      return db.execute('''
        CREATE TABLE tasks (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          isCompleted INTEGER
        )
      ''');
    });
  }
}