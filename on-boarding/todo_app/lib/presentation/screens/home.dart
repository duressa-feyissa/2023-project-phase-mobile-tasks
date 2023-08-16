import 'package:flutter/material.dart';
import '../widgets/start_app.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
