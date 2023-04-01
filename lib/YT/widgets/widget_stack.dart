import 'package:flutter/material.dart';

class Widget_stack extends StatelessWidget {
  const Widget_stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/app_splash_logo.png',
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/physics.png',
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}
