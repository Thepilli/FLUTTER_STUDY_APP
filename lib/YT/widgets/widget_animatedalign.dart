import 'package:flutter/material.dart';

//! AnimatedAlign

class Widget_animatedalign extends StatefulWidget {
  const Widget_animatedalign({Key? key}) : super(key: key);

  @override
  State<Widget_animatedalign> createState() => _Widget_animatedalignState();
}

class _Widget_animatedalignState extends State<Widget_animatedalign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 2),
            curve: Curves.linearToEaseOut,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
