import 'package:flutter/material.dart';

class Widget_popupmenu extends StatefulWidget {
  const Widget_popupmenu({super.key});

  @override
  State<Widget_popupmenu> createState() => _Widget_popupmenuState();
}

class _Widget_popupmenuState extends State<Widget_popupmenu> {
  String title = 'title item';
  String item1 = 'first item';
  String item2 = 'second item';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text(item1),
            value: item1,
          ),
          PopupMenuItem(
            child: Text(item2),
            value: item2,
          ),
        ],
        onSelected: (String newValue) {
          setState(() {
            title = newValue;
          });
        },
      ),
    );
  }
}
