import 'package:e_spp/app/global_models/regex_validadion.dart';
import 'package:e_spp/app/widgets/main_text_form_field.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileFormField extends StatelessWidget {
  final String urlIcon;
  final String hintText;
  final String labelText;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Function()? onTap;
  final Function(String value)? onChange;
  final bool readOnly;
  final List<RegexValidation> validation;
  final List<TextInputFormatter>? textInputFormatter;
  final Widget? customIconWidget;
  const ProfileFormField({
    super.key,
    required this.urlIcon,
    required this.controller,
    this.onTap,
    this.readOnly = false,
    this.validation = const [],
    required this.hintText,
    required this.labelText,
    this.textInputType,
    this.textInputFormatter,
    this.onChange,
    this.customIconWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        16.w,
        16.w,
        16.w,
        0,
      ),
      child: Row(
        children: [
          (customIconWidget == null)
              ? (urlIcon.contains('.svg'))
                  ? SvgPicture.asset(
                      urlIcon,
                      width: 24.h,
                      height: 24.h,
                    )
                  : Image.asset(
                      urlIcon,
                      width: 24.h,
                      height: 24.h,
                    )
              : customIconWidget ?? const SizedBox(),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText,
                  style: TextStyle(
                    color: AppColors.blackPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
                MainTextFormField(
                  onChange: onChange,
                  controller: controller,
                  onTap: onTap,
                  hintText: hintText,
                  textInputType: textInputType,
                  readOnly: readOnly,
                  validation: validation,
                  inputFormatters: textInputFormatter ?? [],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
