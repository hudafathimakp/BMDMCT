import 'package:bmdmct_getx_project/app/common_widgets/card/distribute_cover_card.dart';
import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../app_bar/common_app_bar.dart';
import '../../../common_widgets/common_textfeild.dart';
import '../controllers/distribute_cover_controller.dart';

class DistributeCoverView extends GetView<DistributeCoverController> {
  const DistributeCoverView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          tittle: "Distribute Cover",
          // onpress: () {
          //   Get.back();
          // }
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DistributeCoverCard(
                  text: "AL001",
                ));
          },
        ));
  }
}
