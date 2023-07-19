import 'package:e_spp/app/features/transaction/presentation/widgets/status_trx_widget.dart';
import 'package:e_spp/app/widgets/main_button.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrxCard extends StatelessWidget {
  final Function()? onTap;
  final String time;
  final String titleMonth;
  final String nominal;
  final String status;

  const TrxCard(
      {key,
      this.onTap,
      required this.time,
      required this.titleMonth,
      required this.nominal,
      required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getStatusWidget() {
      Widget res = const SizedBox();
      switch (status) {
        case '2':
          res = Text(
            'Sukses',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: AppColors.greenPrimary,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
            textScaleFactor: 1.0,
          );

          break;
        case '1':
          res = Text(
            'Tertunda',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
            textScaleFactor: 1.0,
          );

          break;
        case '3':
          res = Text(
            'Kadaluarsa',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: AppColors.redPrimary,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
            textScaleFactor: 1.0,
          );

          break;
        default:
      }
      return res;
    }

    return MainButton.withChild(
      splashColor: AppColors.greenPrimary,
      primaryColor: Colors.white,
      elevation: 0,
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
      ),
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greenPrimary.withOpacity(0.1),
            ),
            padding: EdgeInsets.all(10.h),
            width: 40.w,
            height: 40.w,
            child: Image.asset(
              ImgAssetsConst.illusMoney,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        titleMonth,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: AppColors.blackSecondary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      nominal,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: AppColors.blackSecondary,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      time,
                      //'Date',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        color: AppColors.blackPrimary,
                      ),
                    ),
                    StatusTrxWidget(
                      status: status,
                      useIcon: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
