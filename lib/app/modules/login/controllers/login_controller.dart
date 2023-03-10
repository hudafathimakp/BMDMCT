import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../provider/login_provider.dart';

class LoginController extends GetxController {
  late TextEditingController mobileController;
  final isLoginLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  final LoginProvider _provider = GetInstance().find<LoginProvider>();

  @override
  void onInit() {
    mobileController = TextEditingController();
    super.onInit();
  }

  Future<void> login() async {
    isLoginLoading(true);

    try {
      final response = await _provider.login(
        mobileController.text.trimLeft().trimRight(),
      );
      if (response != null) {
        if (response.status.first.status == 'Success') {
          Get.toNamed(Routes.OTP, arguments: [response.status.first.otp]);
        }
      }
    } catch (e) {
      // Get.snackbar("Error", e.toString());

      isLoginLoading(false);
    } finally {
      isLoginLoading(false);
    }
  }
}
