import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DashboardCard extends StatelessWidget {
  final Color iconcolor;
  final SvgPicture images;
  final String text;
  final VoidCallback onpress;
  const DashboardCard(
      {super.key,
      required this.iconcolor,
      required this.images,
      required this.text,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 120,
      child: GestureDetector(
        onTap: onpress,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: iconcolor),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: images,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
