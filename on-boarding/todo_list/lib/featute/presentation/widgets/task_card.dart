import 'package:flutter/material.dart';
import '../../domain/constants/todo_colors.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key? key, required this.todo, required this.index})
      : super(key: key);
  final Map<String, dynamic> todo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 2),
              blurRadius: 5,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: const Color.fromARGB(255, 213, 208, 208).withOpacity(0.5),
              offset: const Offset(-2, -2),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: SizedBox(
          height: 70,
          child: Row(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    todo['title'][0],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 140,
                    child: Text(
                      todo['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        child: Text(
                          todo['date'],
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      width: 4,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: todoListColors[index % 4]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
