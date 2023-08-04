import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 23, bottom: 7),
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 238, 111, 87)),
      ),
    );
  }
}
