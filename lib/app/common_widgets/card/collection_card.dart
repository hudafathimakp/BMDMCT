import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CollectionCard extends StatelessWidget {
  final String name, rate, phone, time;
  const CollectionCard({
    super.key,
    required this.name,
    required this.rate,
    required this.phone,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CommonText(
            //   "Cover No:${coverno}",
            //   Color(0xFFB7B7B7),
            //   14,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CommonText(name, Colors.black, 18, fontWeight: FontWeight.w500),
              CommonText(rate, Color(0xFF3585DB), 18,
                  fontWeight: FontWeight.w600),
            ]),
            SizedBox(
              height: 6,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CommonText(phone, Color(0xFFB6B6B6), 14,
                  fontWeight: FontWeight.w500),
              CommonText(
                time,
                Color(0xFFB6B6B6),
                14,
              ),
            ]),
            // SizedBox(
            //   height: ,
            // ),
          ],
        ),
      ),
    );
  }
}
