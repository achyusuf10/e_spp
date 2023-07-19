import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonFilter extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool isSelected;
  final EdgeInsets? padding;
  const ButtonFilter({
    Key? key,
    this.onTap,
    required this.text,
    required this.isSelected,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
          side: (isSelected)
              ? BorderSide.none
              : const BorderSide(
                  color: AppColors.grayBorder,
                ),
        ),
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 10.h,
            ),
        backgroundColor:
            (isSelected) ? AppColors.greenSecondary : AppColors.white,
        foregroundColor:
            (isSelected) ? AppColors.white : AppColors.graySecondary,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: (isSelected) ? AppColors.white : AppColors.grayBorder,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
