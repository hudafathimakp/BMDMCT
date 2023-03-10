import 'package:get/get.dart';

import '../controllers/collect_cover_controller.dart';

class CollectCoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CollectCoverController>(
      () => CollectCoverController(),
    );
  }
}
