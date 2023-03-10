import 'package:flutter/material.dart';

class ColorText extends StatelessWidget {
  const ColorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'B',
        style: TextStyle(color: Color(0xFFED1C24), fontSize: 18),
        children: <TextSpan>[
          TextSpan(text: 'eypore ', style: TextStyle(color: Color(0xFF0E76BC))),
          TextSpan(
            text: 'M',
            style: TextStyle(color: Color(0xFFED1C24)),
          ),
          TextSpan(
              text: 'andalam ', style: TextStyle(color: Color(0xFF0E76BC))),
          TextSpan(
            text: 'D',
            style: TextStyle(color: Color(0xFFED1C24)),
          ),
          TextSpan(
              text: 'evelopment \n',
              style: TextStyle(color: Color(0xFF0E76BC))),
          TextSpan(
            text: 'M',
            style: TextStyle(color: Color(0xFFED1C24)),
          ),
          TextSpan(
              text: 'ission Charitable',
              style: TextStyle(color: Color(0xFF0E76BC))),
          TextSpan(
            text: 'T',
            style: TextStyle(color: Color(0xFFED1C24)),
          ),
          TextSpan(text: 'rust ', style: TextStyle(color: Color(0xFF0E76BC))),
        ],
      ),
    );
  }
}
