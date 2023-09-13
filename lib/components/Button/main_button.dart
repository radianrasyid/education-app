import 'package:educationapp/components/Text/text_decoration.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  MainButton({
    super.key,
    this.buttonColor = AppColor.btnMain,
    this.buttonLabel = 'button',
    this.fullwidth = true,
    required this.onTap,
    this.labelColor = AppColor.mainWhite,
    this.labelFontSize = 13,
    this.labelFontWeight = FontWeight.w600,
  });

  Color buttonColor;
  void Function() onTap;
  bool fullwidth;
  String buttonLabel;
  Color labelColor;
  FontWeight labelFontWeight;
  double labelFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullwidth ? MediaQuery.of(context).size.width : null,
      height: 40.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 5),
            spreadRadius: 0.1,
            color: AppColor.btnMain.withOpacity(0.3))
      ]),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
          shadowColor: AppColor.btnMain,
          backgroundColor: AppColor.btnMain,
          padding: EdgeInsets.zero,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Text(
                  buttonLabel,
                  style: TextDecoration().MainTextDecoration(
                      labelColor, labelFontWeight, labelFontSize),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
