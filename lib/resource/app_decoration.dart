import 'package:evoy_test/extension/global_extensions.dart';
import 'package:evoy_test/resource/resources.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppDecoration {
  InputDecoration fieldDecoration({
    required String labelText,
    Widget? suffixIcon,
    double? horizontalPadding,
    double? verticalPadding,
  }) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 10),
      suffix: suffixIcon,
      label: Text(
        labelText.L(),
        style: R.textStyles.barlowCondensed(
            color: R.colors.grey2,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            height: 1),
      ),
      labelStyle: R.textStyles.barlowCondensed(
          color: R.colors.grey2,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          height: 1),
      isDense: true,
      border: InputBorder.none,
    );
  }
}
