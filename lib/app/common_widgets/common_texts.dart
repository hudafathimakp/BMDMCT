import 'package:flutter/material.dart';

Text CommonText(String label, Color color, double fontSize,
    {FontWeight? fontWeight = FontWeight.w400,
    TextAlign textAlign = TextAlign.center}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
  );
}
