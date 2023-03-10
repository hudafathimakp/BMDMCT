import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/common_texts.dart';
import '../../../common_widgets/login_button.dart';
import '../../../common_widgets/login_text.dart';
import '../../../common_widgets/otp_textfeild.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/png/bmdmct.png',
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const ColorText(),
              SizedBox(
                height: size.height * 0.09,
              ),
              Image.asset(
                'assets/png/otpphone.png',
              ),
              CommonText('OTP Verification', Colors.black, 18),
              CommonText('Enter the OTP Send to', const Color(0xFFB6B6B6), 18),
              SizedBox(
                height: size.height * 0.05,
              ),
              OtpTextfield(),
              SizedBox(
                width: double.infinity,
                child: LoginButton(
                    label: 'VERIFY & CONTINUE',
                    onClick: () {
                      Get.toNamed(Routes.HOME);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
