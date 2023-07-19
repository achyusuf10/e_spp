import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralEmptyErrorWidget extends StatelessWidget {
  final String descText;
  final String titleText;
  final double? customHeightContent;
  final String customUrlImage;
  final double heightImage;
  final double? widthImage;
  final TextStyle? customDescTextStyle;
  final TextStyle? customTitleTextStyle;
  final Function()? onRefresh;
  final String type;
  final bool isCentered;

  const GeneralEmptyErrorWidget({
    Key? key,
    this.descText = 'Maaf, saat ini data kamu tidak tersedia',
    this.titleText = 'Data tidak tersedia',
    this.customDescTextStyle,
    this.customTitleTextStyle,
    this.customHeightContent,
    this.onRefresh,
    this.customUrlImage = '',
    this.isCentered = true,
  })  : heightImage = 0,
        widthImage = 0,
        type = 'default',
        super(key: key);

  const GeneralEmptyErrorWidget.custom({
    Key? key,
    this.descText = 'Maaf, saat ini data kamu tidak tersedia',
    this.titleText = 'Data tidak tersedia',
    this.customDescTextStyle,
    this.customHeightContent,
    this.customTitleTextStyle,
    required this.heightImage,
    required this.widthImage,
    this.customUrlImage = '',
    this.isCentered = true,
    this.onRefresh,
  })  : type = 'custom',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return (onRefresh != null)
        ? RefreshIndicator(
            onRefresh: () async {
              onRefresh!();
            },
            child: ScrollConfiguration(
              behavior: NoScrollGlowBehavior(),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: _content(context),
              ),
            ),
          )
        : _content(context);
  }

  Widget _content(BuildContext context) {
    return SizedBox(
      height: onRefresh == null ? null : customHeightContent ?? 1.sh / 1.4,
      child: Column(
        mainAxisAlignment:
            isCentered ? MainAxisAlignment.center : MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ConditionalSwitch.single(
              context: context,
              valueBuilder: (context) => type,
              caseBuilders: {
                'default': (context) => Image.asset(
                      customUrlImage.isEmpty
                          ? ImgAssetsConst.drawEmptyError
                          : customUrlImage,
                      width: 177.h,
                      fit: BoxFit.fitHeight,
                    ),
                'custom': (context) => Image.asset(
                      customUrlImage.isEmpty
                          ? ImgAssetsConst.drawEmptyError
                          : customUrlImage,
                      width: widthImage,
                      height: heightImage,
                    ),
              },
              fallbackBuilder: (context) => SizedBox()),
          SizedBox(
            height: 25.h,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              titleText,
              style: customTitleTextStyle ??
                  TextStyle(
                    fontFamily: 'openSans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackPrimary,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              descText,
              style: customDescTextStyle ??
                  TextStyle(
                    fontFamily: 'openSans',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.graySecondary,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class NoScrollGlowBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
