import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';

class TextFormFieldDecoration {
  String hintText;
  TextStyle? hintTextStyle;

  TextFormFieldDecoration({this.hintText = '', this.hintTextStyle});

  InputDecoration decorated(
      double borderRadius, Icon prefixIcon, Color prefixIconColor) {
    return InputDecoration(
      hintText: this.hintText ?? '',
      hintStyle: this.hintTextStyle ?? const TextStyle(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(
          color: AppColor.btnSecondOutline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(color: AppColor.btnSecondOutline),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(color: AppColor.outlineError),
      ),
      prefixIcon: prefixIcon ?? null,
      prefixIconColor: prefixIconColor ?? null,
    );
  }

  InputDecorationTheme decoratedDropdown(double borderRadius) {
    return InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(
          color: AppColor.btnSecondOutline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(color: AppColor.btnSecondOutline),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(color: AppColor.outlineError),
      ),
    );
  }

  InputDecoration decorationCustomized({
    double? borderRadius,
    Icon? prefixIcon,
    Icon? suffixIcon,
    void Function()? suffixTap,
  }) {
    return InputDecoration(
      fillColor: AppColor.mainWhite,
      filled: true,
      prefixIcon: prefixIcon,
      suffixIcon: InkWell(
        onTap: suffixTap ?? () {},
        child: suffixIcon,
      ),
      suffixIconConstraints: const BoxConstraints(
        maxHeight: 50,
        maxWidth: 50,
        minHeight: 50,
        minWidth: 50,
      ),
      hintStyle: this.hintTextStyle ?? const TextStyle(),
      hintText: this.hintText ?? '',
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(
          color: AppColor.mainWhite,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(color: AppColor.mainWhite),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        borderSide: const BorderSide(color: AppColor.outlineError),
      ),
    );
  }
}
