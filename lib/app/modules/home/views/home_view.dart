import 'package:bmdmct_getx_project/app/common_widgets/card/dashboard_card.dart';
import 'package:bmdmct_getx_project/app/common_widgets/card/profile_card.dart';
import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ProfileCard(),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: CommonText("DASHBOARD", Colors.black, 22,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(
                      onpress: () {
                        Get.offAllNamed(
                          Routes.DISTRIBUTE_COVER,
                        );
                      },
                      iconcolor: Color(0xFFFFE2D0),
                      images: SvgPicture.asset("assets/svg/distribute.svg"),
                      text: "Distribute Cover"),
                  DashboardCard(
                      onpress: () {
                        Get.offAllNamed(
                          Routes.COLLECT_COVER,
                        );
                      },
                      iconcolor: Color(0xFFECE3FF),
                      images: SvgPicture.asset("assets/svg/collectcover.svg",
                          height: 10),
                      text: "collect Cover")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(
                      onpress: () {
                        Get.offAllNamed(
                          Routes.HISTORY,
                        );
                      },
                      iconcolor: Color(0xFFE4F6FF),
                      images: SvgPicture.asset("assets/svg/history.svg"),
                      text: "Collection History"),
                  DashboardCard(
                      onpress: () {
                        Get.offAllNamed(
                          Routes.DISTRIBUTION_DETAILS,
                        );
                      },
                      iconcolor: Color(0xFFE1FFE0),
                      images: SvgPicture.asset("assets/svg/distribution.svg",
                          height: 10),
                      text: "Cover Distribution\n Details")
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
