import 'package:flutter/material.dart';
import 'label.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

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
          child: const Text(
            "UX/UI Design App",
            style: TextStyle(fontSize: 18),
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
          child: const Text(
            "Sketch wireframes for the mobile app's main screens and user interactions.",
            style: TextStyle(fontSize: 18, height: 1.25),
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
          child: const Text(
            "August 12, 2023",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
