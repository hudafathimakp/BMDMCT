import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CommonText("Hello,", Color(0xFFB6B6B6), 18),
            CommonText("KURUVANNIVAYAL", Color(0xFF207EC8), 24,
                fontWeight: FontWeight.w600),
            CommonText("9744305810", Color(0xFFB6B6B6), 18),
          ]),
          Center(
            child: Image.asset(
              'assets/png/profile.png',
            ),
          ),
        ],
      ),
    );
  }
}
