import 'package:flutter/material.dart';

class Widget_spacer extends StatelessWidget {
  const Widget_spacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orangeAccent,
          height: 100,
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          color: Color.fromARGB(255, 52, 22, 141),
          height: 100,
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          color: Color.fromARGB(255, 51, 90, 77),
          height: 100,
        ),
      ],
    );
  }
}
