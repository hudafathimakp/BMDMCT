import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsCard extends StatelessWidget {
  final String coverno, name, date, phone, time;
  const DetailsCard({
    super.key,
    required this.coverno,
    required this.name,
    required this.date,
    required this.phone,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: double.infinity,
        decoration: (BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Color(0xFFB6B6B6)),
            borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                "Cover No:${coverno}",
                Color(0xFFB7B7B7),
                14,
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CommonText(name, Colors.black, 18, fontWeight: FontWeight.w500),
                CommonText(
                  date,
                  Color(0xFFB7B7B7),
                  14,
                ),
              ]),
              SizedBox(
                height: 6,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CommonText(phone, Colors.black, 14,
                    fontWeight: FontWeight.w500),
                CommonText(
                  time,
                  Color(0xFFB7B7B7),
                  14,
                ),
              ]),
              // SizedBox(
              //   height: ,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
