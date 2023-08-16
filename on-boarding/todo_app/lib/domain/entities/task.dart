// ignore_for_file: unnecessary_getters_setters

class Task {
  String _title;
  String _description;
  DateTime _due;
  bool _isComplete = false;
  Task({
    required String title,
    required String description,
    required DateTime due,
  })  : _title = title,
        _description = description,
        _due = due;

  set title(String title) => _title = title;
  set description(String description) => _description = description;
  set due(DateTime due) => _due = due;
  set isComplete(bool isComplete) => _isComplete = isComplete;

  String get title => _title;
  String get description => _description;
  DateTime get due => _due;
  bool get isComplete => _isComplete;

  String formatDate() {
    return '${_due.year}-${_due.month.toString().padLeft(2, '0')}-${_due.day.toString().padLeft(2, '0')}';
  }
}
