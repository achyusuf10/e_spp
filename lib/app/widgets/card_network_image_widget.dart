import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardNetworkImageWidget extends StatelessWidget {
  final String url;
  final double radius;
  final double height;
  final double width;
  final Color? loadingColor;
  const CardNetworkImageWidget({
    Key? key,
    required this.url,
    this.radius = 8,
    this.height = 100,
    this.width = 100,
    this.loadingColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        height: height,
        width: width,
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          placeholder: (context, url) => SizedBox(
            height: 44.h,
            width: 50.h,
            child: Center(
              child: CircularProgressIndicator(
                color: loadingColor,
              ),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            color: AppColors.grayPrimary,
          ),
        ),
      ),
    );
  }
}
