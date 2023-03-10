import 'package:bmdmct_getx_project/app/app_bar/common_app_bar.dart';
import 'package:bmdmct_getx_project/app/common_widgets/card/details_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/distribution_details_controller.dart';

class DistributionDetailsView extends GetView<DistributionDetailsController> {
  const DistributionDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        tittle: "Cover Distribution Details",
        // onpress: () {
        //   Get.back();
        // }
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 2,
          itemBuilder: (context, BuildContext) {
            return DetailsCard(
                coverno: ":AL001",
                name: "SURESH",
                date: "12/02/2023",
                phone: "1234567890",
                time: "6:00pm");
          }),
    );
  }
}
