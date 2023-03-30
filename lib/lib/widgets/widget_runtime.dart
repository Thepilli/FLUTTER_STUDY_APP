import 'package:flutter/material.dart';
import 'package:flutter_study_app/lib/widgets/widget_carousel.dart';
import 'package:flutter_study_app/lib/widgets/widget_placeholder.dart';
import 'package:flutter_study_app/lib/widgets/widget_popupmenu.dart';
import 'package:flutter_study_app/lib/widgets/widget_rawchip.dart';
import 'package:flutter_study_app/lib/widgets/widget_scafold.dart';
import 'package:flutter_study_app/lib/widgets/widget_spacer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomCarouselFB2(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
