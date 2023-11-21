import 'package:flutter/material.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_size.dart';
import 'package:graduation_project/constant/font_style.dart';

class MyGridTile extends StatelessWidget {
  const MyGridTile(
      {super.key, required this.color, required this.catigorieName});

  final Color color;
  final String catigorieName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: 12.0.wp,
        height: 12.0.wp,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: lightPurple,
              blurRadius: 5,
              spreadRadius: 0.7,
            ),
          ],
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(6.0.wp)),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            catigorieName,
            style: myStyle(
              textSize: 10.0.sp,
              weight: FontWeight.bold,
              textColor: color == white ? textCatigories : white,
            ),
          ),
        ),
      ),
    );
  }
}
