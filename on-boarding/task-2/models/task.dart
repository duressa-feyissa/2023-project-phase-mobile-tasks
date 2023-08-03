class Task {
  String _title;
  String _description;
  DateTime _due;
  String _status;

  Task({
    required String title,
    required String description,
    required DateTime due,
    bool status = false,
  })  : _title = title,
        _description = description,
        _due = due,
        _status = status ? 'completed' : 'pending';

  set setTitle(String title) => _title = title;
  set setDescription(String description) => _description = description;
  set setDue(DateTime due) => _due = due;
  set setStatus(bool status) => _status = status ? 'completed' : 'pending';

  String get getTitle => _title;
  String get getDescription => _description;
  DateTime get getDue => _due;
  String get getStatus => _status;
  String formatDate(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
  }
}
