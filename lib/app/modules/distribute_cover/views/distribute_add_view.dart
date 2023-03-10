import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_bar/common_app_bar.dart';
import '../../../common_widgets/textwith_heading.dart';

class DistributeAdd extends StatelessWidget {
  const DistributeAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          tittle: "Distribute Cover",
          // onpress: () {
          //   Get.back();
          // }
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextwithHeading(heading: "Name of Person"),
              TextwithHeading(heading: "Mobile Number"),
              TextwithHeading(heading: "Cover Number"),
            ],
          ),
        ));
  }
}
