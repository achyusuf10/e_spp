import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double elevation;
  final String title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onBack;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final bool useCenterTitle;
  final TextStyle? titleSyle;
  final Widget? customLeading;

  const AppBarWidget({
    super.key,
    this.elevation = 0,
    required this.title,
    this.actions,
    this.titleSyle,
    this.bottom,
    this.onBack,
    this.useCenterTitle = true,
    this.systemUiOverlayStyle,
    this.backgroundColor,
    this.textColor,
  }) : customLeading = null;

  const AppBarWidget.customLeading({
    super.key,
    this.elevation = 0,
    required this.title,
    this.customLeading,
    this.actions,
    this.titleSyle,
    this.bottom,
    this.onBack,
    this.useCenterTitle = true,
    this.systemUiOverlayStyle,
    this.backgroundColor,
    this.textColor,
  });

  const AppBarWidget.white({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.onBack,
    this.titleSyle,
    this.useCenterTitle = true,
    this.elevation = 0,
  })  : backgroundColor = Colors.white,
        textColor = AppColors.blackPrimary,
        customLeading = null,
        systemUiOverlayStyle = const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark);
  const AppBarWidget.green({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.onBack,
    this.useCenterTitle = true,
    this.titleSyle,
    this.elevation = 0,
  })  : backgroundColor = AppColors.greenSecondary,
        textColor = Colors.white,
        customLeading = null,
        systemUiOverlayStyle = const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      centerTitle: useCenterTitle,
      systemOverlayStyle: systemUiOverlayStyle ??
          const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light),
      title: Text(
        title,
        style: titleSyle ??
            TextStyle(
              color: textColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
      ),
      leading: customLeading ??
          BackButtonWidget(
            color: textColor,
            onPressed: onBack,
            forcePop: onBack != null ? true : false,
          ),
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => bottom != null
      ? Size.fromHeight(kToolbarHeight + bottom!.preferredSize.height)
      : const Size.fromHeight(kToolbarHeight);
}

class BackButtonWidget extends StatelessWidget {
  final double? size;
  final VoidCallback? onPressed;
  final Color? color;
  final bool forcePop;

  const BackButtonWidget(
      {super.key,
      this.size,
      this.onPressed,
      this.color,
      this.forcePop = false});

  @override
  Widget build(BuildContext context) {
    return ModalRoute.of(context)!.canPop || forcePop
        ? IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: (size ?? 16).h,
              color: color,
            ),
            onPressed: onPressed ?? () => Navigator.pop(context),
          )
        : const SizedBox();
  }
}
