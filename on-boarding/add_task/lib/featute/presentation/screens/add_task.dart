import "package:flutter/material.dart";
import "../widgets/new_task.dart";

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115),
        child: AppBar(
          leading: IconButton(
            onPressed: () {},
            tooltip: "Back",
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Color.fromARGB(255, 238, 111, 87),
            ),
            iconSize: 35,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              tooltip: "Details",
              icon: const Icon(Icons.more_vert),
              iconSize: 35,
              color: Colors.black,
            ),
          ],
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            padding: const EdgeInsets.only(bottom: 25),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "Create new task",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
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
          child: const NewTask()),
    );
  }
}
