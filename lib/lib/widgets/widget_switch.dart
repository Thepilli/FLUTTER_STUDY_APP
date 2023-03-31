import 'package:flutter/material.dart';

class Widget_switch extends StatefulWidget {
  const Widget_switch({super.key});

  @override
  State<Widget_switch> createState() => _Widget_switchState();
}

class _Widget_switchState extends State<Widget_switch> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch is ' + (_switchValue ? 'turned ON' : 'turned OFF')),
      ),
      body: Center(
        child: Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ),
    );
  }
}
