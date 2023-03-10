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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/png/bmdmct.png',
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const ColorText(),
              SizedBox(
                height: size.height * 0.10,
              ),
              Image.asset(
                'assets/png/loginphone.png',
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CommonText('Enter Your Mobile Number', Colors.black, 18),
              SizedBox(
                height: size.height * 0.07,
              ),
              LoginTextField(
                textInputType: TextInputType.number,
                textEditingController: controller.mobileController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter Phone Number';
                  } else if (value.toString().length != 10) {
                    return 'Invalid Phone Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                width: double.infinity,
                child: Obx(
                  () => LoginButton(
                      label: 'VERIFY & CONTINUE',
                      isLoading: controller.isLoginLoading.value,
                      onClick: () {
                        // if(controller.formKey.currentState!.validate()){

                        // }
                        Get.toNamed(Routes.OTP);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextButtonStyleWidget {}
