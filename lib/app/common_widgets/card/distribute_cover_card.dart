import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:bmdmct_getx_project/app/modules/distribute_cover/views/distribute_add_view.dart';
import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistributeCoverCard extends StatelessWidget {
  final String text;
  const DistributeCoverCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: double.infinity,
      decoration: (BoxDecoration(
          border: Border.all(width: 2, color: Color(0xFFB6B6B6)),
          borderRadius: BorderRadius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CommonText(text, Color(0xFF252525), 18),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.30,
            child: ElevatedButton(
              // Color(0xFF207EC8),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF207EC8),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    // side: BorderSide(color: Colors.red)
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  CommonText("Assign", Colors.white, 16)
                ],
              ),
              onPressed: () {
                Get.to(
                  () => DistributeAdd(),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
