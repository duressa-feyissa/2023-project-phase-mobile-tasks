import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: null,
          tooltip: "Back",
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Color.fromARGB(255, 238, 111, 87),
          ),
          iconSize: 35,
          color: Colors.black,
        ),
        Text(
          "Todo List",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        IconButton(
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
