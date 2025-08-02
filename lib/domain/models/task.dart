class Task {
  final int? id;
  String title;
  bool isCompleted;

  Task({this.id, required this.title, this.isCompleted = false});

  factory Task.fromMap(Map<String, dynamic> map) => Task(
    id: map['id'],
    title: map['title'],
    isCompleted: map['isCompleted'] == 1,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'isCompleted': isCompleted ? 1 : 0,
  };
}