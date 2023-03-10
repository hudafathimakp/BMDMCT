import 'package:bmdmct_getx_project/app/common_widgets/common_textfeild.dart';
import 'package:flutter/material.dart';

import 'common_texts.dart';

class TextwithHeading extends StatelessWidget {
  final String heading;
  const TextwithHeading({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(heading, Colors.black, 16, fontWeight: FontWeight.w500),
        SizedBox(
          height: 10,
        ),
        LoginTextField(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
