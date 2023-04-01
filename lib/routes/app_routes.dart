import 'package:flutter/material.dart';
import 'package:flutter_study_app/screens/introduction/introduction_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_study_app/screens/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: '/', page: () => AppIntroductionScreen()),
      ];
}
