import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/onbording.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.off(const OnBording());
    });
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash.PNG'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
