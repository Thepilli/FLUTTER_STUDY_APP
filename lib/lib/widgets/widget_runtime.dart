import 'package:flutter/material.dart';
import 'package:flutter_study_app/lib/widgets/widget_animatedalign.dart';
import 'package:flutter_study_app/lib/widgets/widget_custom_carousel.dart';
import 'package:flutter_study_app/lib/widgets/widget_placeholder.dart';
import 'package:flutter_study_app/lib/widgets/widget_popupmenu.dart';
import 'package:flutter_study_app/lib/widgets/widget_rawchip.dart';
import 'package:flutter_study_app/lib/widgets/widget_scafold.dart';
import 'package:flutter_study_app/lib/widgets/widget_snackbar.dart';
import 'package:flutter_study_app/lib/widgets/widget_spacer.dart';
import 'package:flutter_study_app/lib/widgets/widget_stack.dart';
import 'package:flutter_study_app/lib/widgets/widget_switch.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var page = Widget_snackbar();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test of ' + page.toString()),
        ),
        body: page,
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
