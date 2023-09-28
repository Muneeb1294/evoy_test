import 'package:evoy_test/extension/global_extensions.dart';
import 'package:evoy_test/resource/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatefulWidget {
  final String buttonTitle;
  final GestureTapCallback onTap;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final Color? shadowColor;
  final double? textSize;
  final double? borderRadius;
  final double? borderWidth;
  final double? letterSpacing;
  final double? textPadding;
  final double? elevation;
  final FontWeight? fontWeight;
  final double? buttonWidth;
  final Widget? preIcon;
  final bool? giveSuffix;

  const AppButton({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
    this.borderRadius,
    this.color,
    this.borderColor,
    this.textColor,
    this.borderWidth,
    this.textSize,
    this.letterSpacing,
    this.fontWeight,
    this.textPadding,
    this.elevation,
    this.shadowColor,
    this.buttonWidth,
    this.preIcon,
    this.giveSuffix,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.buttonWidth ?? Get.width,
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          elevation: widget.elevation ?? 3,
          padding: EdgeInsets.zero,
          side: BorderSide(
              color: widget.borderColor ?? R.colors.transparent,
              width: widget.borderWidth ?? 1),
          backgroundColor: widget.color ?? R.colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: widget.textPadding ??
                  (widget.giveSuffix ?? false ? 10.sp : 14.sp)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.preIcon ?? const SizedBox(width: 10),
              Text(
                widget.buttonTitle.L(),
                textAlign: TextAlign.center,
                style: R.textStyles.barlowCondensed(
                    fontSize: widget.textSize ?? 16.sp,
                    fontWeight: widget.fontWeight ?? FontWeight.w500,
                    color: widget.textColor ?? R.colors.white,
                    letterSpacing: widget.letterSpacing ?? 0.44),
              ),
              (widget.giveSuffix ?? false)
                  ? Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: R.colors.white, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    )
                  : const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
