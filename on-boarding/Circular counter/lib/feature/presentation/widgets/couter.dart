import 'package:flutter/material.dart';

import './buttons.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void increment() {
    setState(() {
      if (count < 10) {
        count++;
      } else {
        count = 0;
      }
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      } else {
        count = 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$count',
          style: const TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(2, 2),
                blurRadius: 3,
              ),
            ],
          ),
        ),
        Buttons(onIncrement: increment, onDecrement: decrement),
      ],
    ));
  }
}
