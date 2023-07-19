import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color primaryColor;
  final Color? outlinedColor;
  final Color splashColor;
  final Color textColor;
  final double? minimumWidth;
  final double? maximumWidth;
  final EdgeInsets? padding;
  final String type;
  final Widget? child;
  final double elevation;
  final double? borderRadius;
  final MaterialTapTargetSize? tapTargetSize;
  const MainButton({
    Key? key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.text,
    this.primaryColor = AppColors.greenSecondary,
    this.splashColor = Colors.white,
    this.textColor = Colors.white,
    this.minimumWidth,
    this.maximumWidth,
    this.padding,
    this.tapTargetSize,
  })  : child = null,
        outlinedColor = null,
        type = 'text',
        super(key: key);
  const MainButton.outlined({
    Key? key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.text,
    this.outlinedColor = AppColors.greenSecondary,
    this.primaryColor = Colors.white,
    this.splashColor = AppColors.greenSecondary,
    this.textColor = AppColors.greenSecondary,
    this.minimumWidth,
    this.maximumWidth,
    this.tapTargetSize,
    this.padding,
  })  : type = 'text',
        child = null,
        super(key: key);
  const MainButton.outlinedWithChild({
    Key? key,
    this.onTap,
    this.elevation = 4,
    required this.outlinedColor,
    this.primaryColor = Colors.white,
    this.splashColor = AppColors.greenSecondary,
    this.minimumWidth,
    this.padding,
    this.borderRadius,
    required this.child,
    this.maximumWidth,
    this.tapTargetSize,
  })  : type = 'child',
        textColor = Colors.white,
        text = '',
        super(key: key);
  const MainButton.withChild({
    Key? key,
    this.onTap,
    this.elevation = 4,
    this.primaryColor = AppColors.greenSecondary,
    this.splashColor = Colors.white,
    this.minimumWidth,
    this.padding,
    this.borderRadius,
    required this.child,
    this.maximumWidth,
    this.tapTargetSize,
  })  : type = 'child',
        outlinedColor = null,
        textColor = Colors.white,
        text = '',
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: primaryColor,
        foregroundColor: splashColor,
        tapTargetSize: tapTargetSize,
        minimumSize: Size(minimumWidth ?? double.infinity, maximumWidth ?? 0),
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
          side: outlinedColor == null
              ? BorderSide.none
              : BorderSide(
                  color: outlinedColor!,
                ),
        ),
      ),
      child: (type == 'child')
          ? child
          : Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
    );
  }
}
