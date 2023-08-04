import 'package:flutter/material.dart';
import '../widgets/start_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const StartApp(),
          ),
        ),
      ),
    );
  }
}
