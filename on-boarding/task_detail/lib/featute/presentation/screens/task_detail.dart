import 'package:flutter/material.dart';
import '../widgets/header_banner.dart';
import '../widgets/task.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: Scaffold(
          body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 241, 245, 249),
                Color.fromARGB(255, 231, 238, 246)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const HeaderBanner(),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      "assets/images/todoList.png",
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ),
                  const Task(),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
