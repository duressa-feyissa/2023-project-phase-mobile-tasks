import "package:flutter/material.dart";
import "../widgets/new_task.dart";
import "../../domain/entities/task.dart";

class AddEditTask extends StatelessWidget {
  const AddEditTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)!.settings.arguments as Task?;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
              onPressed: () {
                Navigator.pop(context);
              },
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
            child: Text(
              task == null ? "Create New Task" : "Edit Task",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(height: double.infinity, child: NewTask(task: task)),
    );
  }
}
