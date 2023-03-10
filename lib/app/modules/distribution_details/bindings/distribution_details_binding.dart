import 'package:get/get.dart';

import '../controllers/distribution_details_controller.dart';

class DistributionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DistributionDetailsController>(
      () => DistributionDetailsController(),
    );
  }
}
