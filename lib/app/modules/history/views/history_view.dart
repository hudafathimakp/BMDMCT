import 'package:bmdmct_getx_project/app/common_widgets/card/collection_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../app_bar/common_app_bar.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          tittle: "Collection History",
          // onpress: () {
          //   Get.back();
          // }
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext, context) {
                return CollectionCard(
                  name: 'SURESH',
                  phone: '9658565241',
                  rate: '₹1397.00',
                  time: '22/05/2023 12:10pm',
                );
              }),
        ));
  }
}
