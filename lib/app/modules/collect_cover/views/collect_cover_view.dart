import 'package:bmdmct_getx_project/app/app_bar/common_app_bar.dart';
import 'package:bmdmct_getx_project/app/app_bar/select_calender.dart';
import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/textwith_heading.dart';
import '../controllers/collect_cover_controller.dart';

class CollectCoverView extends GetView<CollectCoverController> {
  const CollectCoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    DateTime startDate = today.subtract(Duration(days: today.weekday - 1));
    DateTime endDate = startDate.add(Duration(days: 6));
    return Scaffold(
        appBar: CommonAppBar(
          tittle: "Collect Cover",
          // onpress: () {
          //   Get.back();
          // }
        ),
        body: Column(
          children: [
            CalenderDate(),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  TextwithHeading(heading: "Enter Cover No"),
                  Row(
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Name:',
                            style: TextStyle(
                                color: Color(0xFFB7B7B7),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Anshad',
                                  style: TextStyle(
                                      color: Color(0xFF3585DB),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                            ],
                          )),
                      Spacer(),
                      // SizedBox(
                      //   width: 70,
                      // ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Phone No: ',
                            style: TextStyle(
                                color: Color(0xFFB7B7B7),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '9682504017',
                                  style: TextStyle(
                                      color: Color(0xFF3585DB),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextwithHeading(heading: "Amount"),
                  TextwithHeading(heading: "Collection Date"),
                  TextwithHeading(heading: "Payment Method"),
                ],
              ),
            ),
          ],
        ));
  }
}

class CalenderDate extends StatelessWidget {
  const CalenderDate({
    super.key,
  });

  // List list = ['Mon','Tue','Wed'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            ).then((date) {
              // if (date != null) {
              //   calendarController.onDateSelected(date);
              // }
            });
          },
          child: Row(
            children: [
              CommonText('March 2023', Color(0xFFB6B6B6), 20,
                  fontWeight: FontWeight.w500),
              // TextField(),
              SizedBox(
                width: 6,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 30,
                color: Color(0xFFB6B6B6),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Column(
                  children: [
                    CommonText('mon', Colors.black, 16,
                        fontWeight: FontWeight.w600),
                    CommonText("2", Colors.black, 32,
                        fontWeight: FontWeight.w600)
                  ],
                ),
              );
              // DateTime currentDate = startDate.add(Duration(days: index));
              //   // String formattedDate = DateFormat('dd/MM/yyyy').format(currentDate);
              //   return ListTile(
              //     // title: Text(''),
              //     subtitle: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text('${currentDate}'),
              //     ),
              //     onTap: () {
              //       // Do something when the date is tapped
              //       // For example, navigate to a new screen with the selected date
              //       // Get.toNamed('/details', arguments: formattedDate);
              //     },
              //   );
            },
          ),
        ),
      ],
    );
  }
}
