import 'package:evoy_test/extension/global_extensions.dart';
import 'package:evoy_test/resource/resources.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppDecoration {
  InputDecoration fieldDecoration({
    Widget? preIcon,
    required String hintText,
    Widget? suffixIcon,
    double? radius,
    double? horizontalPadding,
    double? verticalPadding,
    double? iconMinWidth,
    Color? fillColor,
    FocusNode? focusNode,
    bool isdence = true,
  }) {
    return InputDecoration(
      prefixIconConstraints: BoxConstraints(
        minWidth: iconMinWidth ?? 42,
      ),
      contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 16),
      fillColor: fillColor ?? R.colors.transparent,
      hintText: hintText.L(),
      prefixIcon: preIcon,
      suffixIcon: suffixIcon != null ? Container(child: suffixIcon) : null,
      hintStyle: R.textStyles.barlowCondensed(
        color: R.colors.grey2,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
      ),
      isDense: isdence,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4)),
        borderSide: BorderSide(color: R.colors.grey3),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4)),
        borderSide: BorderSide(color: R.colors.grey3),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4)),
        borderSide: BorderSide(color: R.colors.grey3),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4)),
        borderSide: BorderSide(color: R.colors.grey3),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4)),
        borderSide: BorderSide(color: R.colors.primary),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4)),
        borderSide: BorderSide(color: R.colors.primary),
      ),
      filled: true,
    );
  }
}
