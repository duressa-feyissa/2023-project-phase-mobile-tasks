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
            fontSize: 19,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 2,
              )
            ],
            color: Color.fromARGB(255, 233, 105, 79)),
      ),
    );
  }
}
