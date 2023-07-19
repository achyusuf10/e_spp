import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusTrxWidget extends StatelessWidget {
  final String? status;
  final bool useIcon;

  const StatusTrxWidget({
    key,
    required this.status,
    this.useIcon = true,
  }) : super(key: key);

  String getStatus() {
    switch (status) {
      case "1":
        return 'Menunggu';
      case "2":
        return 'Sukses';
      case "3":
        return 'Kadaluarsa';

      default:
        return '';
    }
  }

  TextStyle getTextStyle() {
    switch (status) {
      case "1":
        return TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: Colors.orange,
        );
      case "2":
        return TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.greenSecondary,
        );

      case "3":
        return TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.redPrimary,
        );

      default:
        return TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.greenSecondary,
        );
    }
  }

  Widget statusWidget(String? status) {
    switch (status) {
      case "1":
        return Icon(
          Icons.access_time_outlined,
          size: 24.h,
          color: Colors.orange,
        );
      case "2":
        return Icon(
          Icons.check_circle,
          size: 24.h,
          color: AppColors.greenSecondary,
        );
      case "3":
        return Icon(
          Icons.cancel,
          size: 24.h,
          color: AppColors.redPrimary,
        );

      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (useIcon) statusWidget(status),
        SizedBox(
          width: 4.w,
        ),
        Text(
          getStatus(),
          style: getTextStyle(),
        ),
      ],
    );
  }
}
