import 'package:flutter/material.dart';
import 'package:todo_list/featute/presentation/widgets/create_button.dart';
import '../widgets/header_banner.dart';
import '../widgets/task_card.dart';
import '../../domain/constants//tasks_list.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      home: Scaffold(
          body: SafeArea(
        child: SizedBox(
          height: double.infinity,
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
                      itemCount: tasksList.length,
                      padding: const EdgeInsets.only(top: 5),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (ctx, index) =>
                          TaskCard(todo: tasksList[index], index: index),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CreateButton(),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
