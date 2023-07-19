import 'dart:io';

import 'package:e_spp/app/widgets/card_network_image_widget.dart';
import 'package:e_spp/utils/extensions/string_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoProfileWidget extends StatelessWidget {
  final Function()? onTap;
  final File? file;
  final String urlPhoto;
  const PhotoProfileWidget({
    super.key,
    this.onTap,
    this.file,
    this.urlPhoto =
        'https://cdn.idntimes.com/content-images/post/20221104/download-65049cac42b21fd08b36c35ae6eca9ce_600x400.jpeg',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          file == null
              ? CardNetworkImageWidget(
                  height: 80.h,
                  width: 80.h,
                  radius: 10000,
                  url: urlPhoto,
                )
              : Container(
                  height: 80.h,
                  width: 80.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                    image: (file == null)
                        ? null
                        : DecorationImage(
                            image: FileImage(file!),
                            fit: BoxFit.cover,
                          ),
                  ),
                  child: (file == null)
                      ? Text(
                          'Aditya Hartanto'.extGetInitialWord(),
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : const SizedBox(),
                ),
          // Container(
          //   height: 30.h,
          //   width: 30.h,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.white,
          //     boxShadow: [
          //       BoxShadow(
          //         color: AppColors.blackSecondary.withOpacity(
          //           0.2,
          //         ),
          //         offset: const Offset(0, 1),
          //         blurRadius: 3,
          //         spreadRadius: 1,
          //       )
          //     ],
          //   ),
          //   child: Icon(
          //     Icons.edit,
          //     color: AppColors.blackSecondary,
          //     size: 16.h,
          //   ),
          // ),
        ],
      ),
    );
  }
}
