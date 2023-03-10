import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/png/bmdmct.png',
          // fit: BoxFit.cover,
          // width: double.infinity,
          // height: double.infinity,
        ),
      ),
    );
  }
}
