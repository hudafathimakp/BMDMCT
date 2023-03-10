import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 3), () async {
      Get.offAllNamed(
        Routes.LOGIN,
      );
    });
  }
}
