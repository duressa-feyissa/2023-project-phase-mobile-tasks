import 'package:flutter/material.dart';
import '../../domain/entities/task.dart';
import 'label.dart';

class DisplayTask extends StatefulWidget {
  const DisplayTask({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  State<DisplayTask> createState() => _DisplayTaskState();
}

class _DisplayTaskState extends State<DisplayTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Label(label: "Title"),
        Container(
          height: 50,
          width: 320,
          padding: const EdgeInsets.only(left: 15, right: 15),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 228, 225, 231),
          ),
          child: Text(
            widget.task.title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const Label(label: "Description"),
        Container(
          height: 150,
          width: 320,
          padding: const EdgeInsets.all(15),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 228, 225, 231),
          ),
          child: Text(
            widget.task.description,
            style: const TextStyle(fontSize: 18, height: 1.25),
          ),
        ),
        const Label(label: "Deadline"),
        Container(
          height: 50,
          width: 320,
          padding: const EdgeInsets.only(left: 15, right: 15),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 228, 225, 231),
          ),
          child: Text(
            widget.task.formatDate(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: widget.task.isComplete,
                onChanged: (value) {
                  setState(() {
                    value = !widget.task.isComplete;
                    widget.task.isComplete = value!;
                  });
                },
              ),
              const Text(
                'Complete',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
