import 'package:flutter/material.dart';

class Widget_snackbar extends StatefulWidget {
  Widget_snackbar({super.key});

  @override
  State<Widget_snackbar> createState() => _Widget_snackbarState();
}

class _Widget_snackbarState extends State<Widget_snackbar> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show SnackBar'),
        onPressed: () {
          _counter++;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              showCloseIcon: true,
              closeIconColor: Colors.red,
              content:
                  Text('You have clicked ' + _counter.toString() + ' times'),
              action: SnackBarAction(label: 'Undo', onPressed: () {}),
            ),
          );
        },
      ),
    );
  }
}
