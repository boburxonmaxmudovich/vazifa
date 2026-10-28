enum Priority { low('Past'), medium('Normal'), high('Urgent'); final String label; const Priority(this.label); }


class Task {
  final String id;
  final String title;
  final String? description;
  final Priority priority;
  final bool isDone;
  final DateTime? dueDate;
  final DateTime createdAt;

  Task({
    required this.id,
    required this.title,
    this.description,
    this.isDone = false,
    this.priority = Priority.medium,
    this.dueDate,
    required this.createdAt,
  });

  Task copyWith({
    String? title,
    String? description,
    bool? isDone,
    Priority? priority,
    DateTime? dueDate,
  }) {
    return Task(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
      priority: priority ?? this.priority,
      dueDate: dueDate ?? this.dueDate,
      createdAt: createdAt,
    );
  }
  @override
  String toString() {
    return 'Task(id: $id, title: $title, isDone: $isDone, priority: $priority)';
  }
}   // ← klass faqat shu yerda, eng oxirida yopiladi