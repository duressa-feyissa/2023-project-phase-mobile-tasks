import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({Key? key, required this.onPressed}) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 238, 111, 87),
          ),
          child: const Text(
            'Create Task',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
