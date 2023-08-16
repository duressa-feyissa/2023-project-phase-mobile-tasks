import 'package:flutter/material.dart';
import 'presentation/screens/todo_list.dart';
import 'presentation/screens/add_task.dart';
import 'presentation/screens/home.dart';
import 'presentation/screens/task_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/todoList': (context) => const TodoList(),
        '/addEditTask': (context) => const AddEditTask(),
        '/taskDetail': (context) => const TaskDetail(),
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/addEditTask') {
          return _createPageRoute(const AddEditTask(), settings);
        }
        return null;
      },
    );
  }
}

PageRouteBuilder _createPageRoute(Widget page, RouteSettings settings) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: const Duration(seconds: 1),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
