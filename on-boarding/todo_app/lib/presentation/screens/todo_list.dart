import 'package:flutter/material.dart';
import '../../domain/entities/task.dart';
import '../widgets/create_button.dart';
import '../widgets/header_banner.dart';
import '../widgets/task_card.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Task> tasks = [
    Task(
        title: "Complete Project Proposal",
        due: DateTime.now(),
        description:
            "Review project requirements, outline scope, and create a detailed proposal."),
    Task(
        title: "UX Design",
        due: DateTime.now(),
        description: "Create wireframes and mockups for the new app."),
  ];
  Future<void> _navigateAndAddTask(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/addEditTask');

    if (!mounted) return;

    if (result != null) {
      setState(() {
        tasks.add(result as Task);
      });
    }
  }

  Future<void> _navigateAndEditTask(BuildContext context, index) async {
    final originalTask = tasks[index];
    final result = await Navigator.pushNamed(context, '/addEditTask',
        arguments: originalTask);
    if (!mounted) return;

    if (result != null) {
      setState(() {
        tasks[index] = result as Task;
      });
    } else {
      setState(() {
        tasks[index] = originalTask;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const HeaderBanner(
                    title: "Task List",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      "assets/images/todoList.png",
                      fit: BoxFit.cover,
                      width: 190,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Text(
                        "Task List",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 360,
                    child: ListView.builder(
                      itemCount: tasks.length,
                      padding: const EdgeInsets.only(top: 5),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (ctx, index) => Dismissible(
                        movementDuration: const Duration(milliseconds: 500),
                        key: Key(
                            DateTime.now().millisecondsSinceEpoch.toString()),
                        direction: DismissDirection.horizontal,
                        confirmDismiss: (direction) {
                          if (direction == DismissDirection.startToEnd) {
                            return showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: const Text("Delete Task"),
                                content: const Text(
                                    "Are you sure you want to delete this task?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop(false);
                                    },
                                    child: const Text("No"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop(true);
                                    },
                                    child: const Text("Yes"),
                                  ),
                                ],
                              ),
                            );
                          } else if (direction == DismissDirection.endToStart) {
                            _navigateAndEditTask(context, index);
                          }
                          return Future.value(false);
                        },
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 30),
                        ),
                        secondaryBackground: Container(
                          color: Colors.blue,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 30),
                        ),
                        onDismissed: (direction) {
                          if (direction == DismissDirection.startToEnd) {
                            setState(() {
                              tasks.removeAt(index);
                            });
                          } else if (direction == DismissDirection.endToStart) {
                            _navigateAndEditTask(context, index);
                          }
                        },
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, '/taskDetail',
                              arguments: tasks[index]),
                          child: TaskCard(todo: tasks[index], index: index),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CreateButton(onPressed: () {
                    _navigateAndAddTask(context);
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
