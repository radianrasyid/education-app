import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextDecoration {
  TextStyle MainTextDecoration(
      Color color, FontWeight fontWeight, double fontSize) {
    return TextStyle(
      color: color ?? AppColor.mainBlack,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: fontSize ?? 14.sp,
    );
  }
}
