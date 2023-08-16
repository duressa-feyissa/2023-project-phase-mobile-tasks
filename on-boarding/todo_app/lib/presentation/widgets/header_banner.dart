import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    Widget iconBack = title != "Task List"
        ? IconButton(
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
          )
        : const SizedBox(
            width: 35,
            height: 35,
          );

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        iconBack,
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const IconButton(
          onPressed: null,
          tooltip: "Details",
          icon: Icon(Icons.more_vert),
          iconSize: 35,
          color: Colors.black,
        ),
      ],
    );
  }
}
