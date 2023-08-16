import 'package:flutter/material.dart';
import '../../domain/entities/task.dart';
import '../../domain/constants/months.dart';
import 'label.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key, this.task}) : super(key: key);
  final Task? task;

  @override
  State<NewTask> createState() {
    return _NewTaskState();
  }
}

class _NewTaskState extends State<NewTask> {
  String _selectedDateTime = "";
  var _picked = DateTime.now();
  String _title = "";
  String _description = '';

  Future<void> _timeDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked == null) {
      return;
    }

    setState(() {
      _picked = picked;
      _selectedDateTime = '${months[picked.month]}'
          ' ${picked.day}, ${picked.year} ${picked.hour}'
          ':${picked.minute < 10 ? '0${picked.minute}' : picked.minute} '
          '${picked.hour < 12 ? 'AM' : 'PM'}';
    });
  }

  void saveTask() {
    setState(() {
      if (_title.isEmpty || _selectedDateTime.isEmpty || _description.isEmpty) {
        return;
      }
      Navigator.pop(context,
          Task(title: _title, description: _description, due: _picked));
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.task != null) {
      _title = widget.task!.title;
      _description = widget.task!.description;
      _picked = widget.task!.due;
      _selectedDateTime = '${months[_picked.month]}'
          ' ${_picked.day}, ${_picked.year} ${_picked.hour}'
          ':${_picked.minute < 10 ? '0${_picked.minute}' : _picked.minute} '
          '${_picked.hour < 12 ? 'AM' : 'PM'}';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Label(label: "Main task name"),
              Material(
                elevation: 3,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: TextFormField(
                  initialValue: widget.task?.title ?? _title,
                  onChanged: (value) {
                    _title = value;
                  },
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Label(label: "Due date"),
              Material(
                elevation: 3,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: InkWell(
                  onTap: () {
                    _timeDatePicker(context);
                  },
                  child: InputDecorator(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.calendar_today,
                        color: Color.fromARGB(255, 238, 111, 87),
                      ),
                    ),
                    child: Text(
                      _selectedDateTime,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const Label(label: "Description"),
              Material(
                elevation: 3,
                borderOnForeground: true,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: TextFormField(
                  initialValue: widget.task?.description ?? _description,
                  maxLines: 3,
                  onChanged: (value) => _description = value,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: saveTask,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: const Color.fromARGB(255, 238, 111, 87),
                    ),
                    child: Text(
                      widget.task == null ? 'Create Task' : 'Update Task',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
