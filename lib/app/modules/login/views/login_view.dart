import 'package:bmdmct_getx_project/app/common_widgets/common_textfeild.dart';
import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:bmdmct_getx_project/app/common_widgets/login_button.dart';
import 'package:bmdmct_getx_project/app/common_widgets/login_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/png/bmdmct.png',
            ),
            SizedBox(
              height: 20,
            ),
            ColorText(),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/png/loginphone.png',
            ),
            SizedBox(
              height: 20,
            ),
            CommonText('Enter Your Mobile Number', Colors.black, 18),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: LoginTextField(),
            ),
            LoginButton(
                label: 'VERIFY & CONTINUE',
                onClick: () {
                  Get.toNamed(Routes.OTP);
                })
          ],
        ),
      ),
    );
  }
}

class TextButtonStyleWidget {}
