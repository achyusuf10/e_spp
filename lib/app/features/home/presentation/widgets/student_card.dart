import 'package:e_spp/app/widgets/card_network_image_widget.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentCard extends StatelessWidget {
  final String nameStudent;
  final String nisn;
  final String urlPhoto;
  const StudentCard({
    super.key,
    required this.nameStudent,
    this.urlPhoto =
        'https://cdn.idntimes.com/content-images/post/20221104/download-65049cac42b21fd08b36c35ae6eca9ce_600x400.jpeg',
    required this.nisn,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 328 / 200,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.r),
          image: const DecorationImage(
            image: AssetImage(
              ImgAssetsConst.bgCard,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardNetworkImageWidget(
                height: 50.h,
                width: 50.h,
                radius: 10000,
                url: urlPhoto,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    nameStudent,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greenSecondary,
                    ),
                  ),
                  Text(
                    nisn,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.greenSecondary,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
