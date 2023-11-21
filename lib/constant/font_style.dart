import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_size.dart';





TextStyle myStyle({
  double textSize = 20.0,
  Color textColor = black,
  FontWeight? weight = FontWeight.normal,
}) {
  return GoogleFonts.almarai(
    
    fontSize: textSize.sp,
    color: textColor,
    fontWeight: weight,
    
  );
}
