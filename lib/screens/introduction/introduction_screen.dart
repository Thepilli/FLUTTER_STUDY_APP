import 'package:flutter/material.dart';
import 'package:flutter_study_app/widgets/app_circle_button.dart';
import 'package:get/get.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, size: 100, color: Colors.yellow),
                    SizedBox(height: 40),
                    const Text(
                      'This is a study app. You can uset use it to study Flutter.',
                    ),
                    SizedBox(height: 40),
                    AppCircleButton(
                      onTap: () => null,
                      child: const Icon(Icons.arrow_back),
                    ),
                  ]),
            )));
  }
}
