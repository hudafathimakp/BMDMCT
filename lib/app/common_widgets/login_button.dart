import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final VoidCallback onClick;
  const LoginButton({super.key, required this.label, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onClick();
      },
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          // side: BorderSide(
          //   width: 1,
          // ),
          // fixedSize: const Size(99, 38),
          backgroundColor: Color(0xFF2196F3),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 110),
          textStyle: const TextStyle(fontSize: 14)),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class TextButtonBgStyleWidget extends StatelessWidget {
  final String label;
  final VoidCallback onClick;
  final Color colors;

  const TextButtonBgStyleWidget(
      {super.key,
      required this.label,
      required this.onClick,
      required this.colors});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onClick();
      },
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          fixedSize: const Size(115, 38),
          padding: const EdgeInsets.all(10),
          backgroundColor: colors,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 14)),
      child: Text(label),
    );
  }
}
