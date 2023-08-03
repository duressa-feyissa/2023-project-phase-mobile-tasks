import 'dart:io';
import 'models/task.dart';

class TaskManager {
  List<Task> tasks = [];

  void AddTask() {
    print('Enter task title: ');
    String title = stdin.readLineSync()!;
    print('Enter task description: ');
    String description = stdin.readLineSync()!;

    print('Enter new due date (yyyy-mm-dd): ');
    String due = stdin.readLineSync()!;
    DateTime? dueDate = DateTime.tryParse(due);

    if (dueDate == null) {
      print('Invalid date format!');
      return;
    }
    Task task = Task(title: title, description: description, due: dueDate);
    tasks.add(task);
    print('\nTask added successfully!\n');
  }

  void removeTask(Task task) {
    tasks.remove(task);
    print('Task removed successfully!');
  }

  void editTask(Task task) {
    bool stop = true;
    while (stop) {
      print('1. Edit title');
      print('2. Edit description');
      print('3. Edit due date');
      print('4. Edit Status');
      print('5. Back');
      print('\nEnter your choice: ');
      String? choice = stdin.readLineSync();
      if (choice == null) {
        print('Invalid choice!');
        continue;
      }
      int? userChoice = int.tryParse(choice);
      if (userChoice == null) {
        print('Invalid choice!');
        continue;
      }
      switch (userChoice) {
        case 1:
          print('Enter new title: ');
          String title = stdin.readLineSync()!;
          task.setTitle = title;
          break;
        case 2:
          print('Enter new description: ');
          String description = stdin.readLineSync()!;
          task.setDescription = description;
          break;
        case 3:
          print('Enter new due date (yyyy-mm-dd): ');
          String due = stdin.readLineSync()!;
          DateTime? dueDate = DateTime.tryParse(due);

          if (dueDate == null) {
            print('Invalid date format!');
            break;
          } else {
            task.setDue = dueDate;
          }
          break;
        case 4:
          print('Enter new status:\n1. Complete\n2: Pending(1/2)');
          String status = stdin.readLineSync()!;
          if (status == '1' || status == '2') {
            task.setStatus = status == '1' ? true : false;
          } else {
            print('Invalid Input!');
          }
          break;
        case 5:
          stop = false;
          break;
        default:
          print('Invalid choice!');
          break;
      }
    }
  }

  void viewCompletedTask() {
    if (tasks.where((task) => task.getStatus == 'completed').isEmpty) {
      print('\n\nNo tasks found!');
      return;
    }
    tasks.forEach((task) {
      if (task.getStatus == 'completed') {
        print('Title: ${task.getTitle}');
        print('Description: ${task.getDescription}');
        print('Due: ${task.formatDate(task.getDue)}');
        print('Status: ${task.getStatus}\n');
      }
    });
  }

  void viewPendingTask() {
    if (tasks.where((task) => task.getStatus == 'pending').isEmpty) {
      print('\n\nNo tasks found!');
      return;
    }
    tasks.forEach((task) {
      if (task.getStatus == 'pending') {
        print('Title: ${task.getTitle}');
        print('Description: ${task.getDescription}');
        print('Due: ${task.formatDate(task.getDue)}');
        print('Status: ${task.getStatus}\n');
      }
    });
  }

  void printTasks() {
    int length = tasks.length;
    if (length == 0)
      print('\n\nNo tasks found!');
    else
      print('\n\nTotal tasks: $length\n');
    for (int i = 0; i < length; i++) {
      print('Task ${i + 1}');
      print('Title: ${tasks[i].getTitle}');
      print('Description: ${tasks[i].getDescription}');
      print('Due: ${tasks[i].formatDate(tasks[i].getDue)}');
      print('Status: ${tasks[i].getStatus}\n');
    }
  }

  void Menu() {
    print('\n\n*** Task Manager App');
    print('1. Create Task');
    print('2. Remove Task');
    print('3. Edit task');
    print('4. View Completed Tasks');
    print('5. View Pending Tasks');
    print('6. View All Tasks');
    print('7. Exit\n');
    print('\nEnter your choice: ');

    String choice = stdin.readLineSync()!;
    int? userChoice = int.tryParse(choice);
    if (userChoice == null) {
      print('Invalid choice!');
      return;
    }
    switch (userChoice) {
      case 1:
        AddTask();
        break;
      case 2:
        print('Enter task number to remove: ');
        String taskNumber = stdin.readLineSync()!;
        int? taskNum = int.tryParse(taskNumber);
        if (taskNum == null || tasks.length < taskNum) {
          print('Invalid task number!');
          break;
        }
        removeTask(tasks[taskNum - 1]);
        break;
      case 3:
        print('Enter task number to edit: ');
        String taskNumber = stdin.readLineSync()!;
        int? taskNum = int.tryParse(taskNumber);
        if (taskNum == null || tasks.length < taskNum) {
          print('Invalid task number!');
          break;
        }
        editTask(tasks[taskNum - 1]);
        break;
      case 4:
        viewCompletedTask();
        break;
      case 5:
        viewPendingTask();
        break;
      case 6:
        printTasks();
        break;
      case 7:
        print('Goodbye!');
        exit(0);
      default:
        print('Invalid choice!');
        break;
    }
  }
}

void main() {
  TaskManager taskManagerApp = TaskManager();
  while (true) taskManagerApp.Menu();
}
