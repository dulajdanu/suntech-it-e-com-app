import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  static const backgroundColor = Color(0xff1F1F1F);

  static final headingTextStyle = GoogleFonts.barlow(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final defaultHorizontalMargin = 49.w;

  ///The default border color of the text field
  static const textFieldBorderColor = Color(0xffE4DFDF);

  //color of the hint text
  static const hintTextColor = Color(0xff747688);

  //Color of the input text
  static const inputTextColor = Colors.white;

  //Color of icon in the text field
  static const textFieldIconColor = Color(0xff807A7A);
}