import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {required this.onIncrement, required this.onDecrement, super.key});

  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton.icon(
        onPressed: onIncrement,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amberAccent.shade700),
        icon: const Icon(
          Icons.add,
          size: 30,
        ),
        label: const Text(
          'Increment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(width: 20),
      ElevatedButton.icon(
        onPressed: onDecrement,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 178, 134, 4),
        ),
        icon: const Icon(
          Icons.remove,
          size: 30,
        ),
        label: const Text(
          'Decrement',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
