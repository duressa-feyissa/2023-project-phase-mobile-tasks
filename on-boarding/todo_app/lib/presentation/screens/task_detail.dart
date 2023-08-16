import 'package:flutter/material.dart';
import '../widgets/header_banner.dart';
import '../../domain/entities/task.dart';
import '../widgets/task.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Task task = ModalRoute.of(context)!.settings.arguments as Task;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const HeaderBanner(
                    title: "Task Detail",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      "assets/images/taskDetail.png",
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ),
                  DisplayTask(task: task),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
