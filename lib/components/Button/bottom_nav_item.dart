import 'package:educationapp/components/Text/text_decoration.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem(
      {super.key,
      required this.image,
      required this.label,
      required this.bloc,
      required this.blocEvent,
      required this.isActive});

  final String label, image;
  final Bloc bloc;
  final dynamic blocEvent;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 50.w,
      child: InkWell(
        onTap: () {
          bloc.add(blocEvent);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              color: isActive ? AppColor.btnMain : AppColor.secondText,
            ),
            Text(
              label,
              style: TextDecoration().MainTextDecoration(
                  isActive ? AppColor.btnMain : AppColor.secondText,
                  FontWeight.w500,
                  10.sp),
            )
          ],
        ),
      ),
    );
  }
}
