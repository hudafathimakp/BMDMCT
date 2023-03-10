import 'package:get/get.dart';

import '../controllers/distribute_cover_controller.dart';

class DistributeCoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DistributeCoverController>(
      () => DistributeCoverController(),
    );
  }
}
