// import 'package:bmdmct_getx_project/app/common_widgets/common_textfeild.dart';
// import 'package:bmdmct_getx_project/app/common_widgets/common_texts.dart';
// import 'package:bmdmct_getx_project/app/common_widgets/login_button.dart';
// import 'package:bmdmct_getx_project/app/routes/app_pages.dart';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../../../common_widgets/otp_textfeild.dart';
// import '../controllers/login_controller.dart';

// class OtpView extends GetView<LoginController> {
//   const OtpView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 80,
//             ),
//             Image.asset(
//               'assets/png/bmdmct.png',
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'B',
//                 style: TextStyle(color: Color(0xFFED1C24)),
//                 children: const <TextSpan>[
//                   TextSpan(
//                       text:
//                           'eypore Mandalam Development Mission\n Charitable Trust',
//                       style: TextStyle(color: Color(0xFF0E76BC))),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Image.asset(
//               'assets/png/otpphone.png',
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             CommonText('OTP Verification', Colors.black, 18),
//             CommonText('Enter the OTP Send to', Color(0xFFB6B6B6), 18),
//             SizedBox(
//               height: 50,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: OtpTextfield(),
//             ),
//             LoginButton(
//                 label: 'VERIFY & CONTINUE',
//                 onClick: () {
//                   // Get.toNamed(Routes.)
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TextButtonStyleWidget {}
