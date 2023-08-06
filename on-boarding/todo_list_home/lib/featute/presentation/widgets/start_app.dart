import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  static const String routeName = '/start';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("Smart Task Manager",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(0, 1),
                          blurRadius: 1,
                        )
                      ])),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("Save our time and boast your productivity!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      backgroundColor: const Color.fromARGB(255, 108, 99, 255)),
                  child: const Text(
                    'Get Started',
                    style:
                        TextStyle(color: Colors.white, fontSize: 24, shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      )
                    ]),
                  ),
                )
              ],
            ),
          ]),
    );
  }
}
