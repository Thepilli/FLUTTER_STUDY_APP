import 'package:flutter/material.dart';

class Widget_placeholder extends StatelessWidget {
  const Widget_placeholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Placeholder(
          fallbackHeight: 100,
          fallbackWidth:
              50, //DOES NOT DO ANYTHING, AS THE COLUMN WIDGET USES DEFAULT VALUE (CAN BE TESTED USING ROW() INSTEATED)
          color: Colors.green,
        ),
      ],
    );
  }
}
