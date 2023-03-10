// import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
// import 'package:flutter/material.dart';

// class CalenderDate extends StatelessWidget {
//   const CalenderDate({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextButton(
//           onPressed: () {
//             showDatePicker(
//               context: context,
//               initialDate: DateTime.now(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2100),
//             ).then((date) {
//               // if (date != null) {
//               //   calendarController.onDateSelected(date);
//               // }
//             });
//           },
//           child: Row(
//             children: [
//               CommonText("March 2023", Color(0xFFB6B6B6), 20,
//                   fontWeight: FontWeight.w500),
//               SizedBox(
//                 width: 6,
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 30,
//                 color: Color(0xFFB6B6B6),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           height: 75,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: 7,
//             itemBuilder: (BuildContext context, int index) {
//               return Padding(
//                 padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                 child: Column(
//                   children: [
//                     CommonText('mon', Colors.black, 16,
//                         fontWeight: FontWeight.w600),
//                     CommonText("2", Colors.black, 32,
//                         fontWeight: FontWeight.w600)
//                   ],
//                 ),
//               );
//               // DateTime currentDate = startDate.add(Duration(days: index));
//               //   // String formattedDate = DateFormat('dd/MM/yyyy').format(currentDate);
//               //   return ListTile(
//               //     // title: Text(''),
//               //     subtitle: Padding(
//               //       padding: const EdgeInsets.all(8.0),
//               //       child: Text('${currentDate}'),
//               //     ),
//               //     onTap: () {
//               //       // Do something when the date is tapped
//               //       // For example, navigate to a new screen with the selected date
//               //       // Get.toNamed('/details', arguments: formattedDate);
//               //     },
//               //   );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
