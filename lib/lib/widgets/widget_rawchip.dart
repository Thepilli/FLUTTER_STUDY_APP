import 'package:flutter/material.dart';

class Widget_rawchip extends StatelessWidget {
  const Widget_rawchip({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RawChip(
        label: const Text('Rawchip'),
        avatar: Icon(Icons.person),
        deleteIcon: Icon(Icons.remove_circle),
        onPressed: () {},
        onDeleted: () {},
      ),
    );
  }
}
