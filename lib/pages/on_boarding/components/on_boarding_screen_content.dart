import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreenContent extends StatelessWidget {
  const OnBoardingScreenContent(
      {super.key,
      required this.image,
      this.title = "TITLE",
      this.subtitle = "SUBTITLE"});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: 250.h,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColor.btnMain,
            fontWeight: FontWeight.bold,
            fontSize: 25.sp,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: AppColor.secondText,
            fontWeight: FontWeight.normal,
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
