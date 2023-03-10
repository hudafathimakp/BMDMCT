import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String tittle;
  // final Function onpress;
  const CommonAppBar({
    super.key,
    required this.tittle,
    //  required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        bottomOpacity: 0,
        elevation: 1.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.HOME);
            // onpress;
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 22,
          ),
        ),
        title: Text(
          tittle,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
