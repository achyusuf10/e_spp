import 'package:e_spp/app/global_models/regex_validadion.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? initialValue;
  final Function(String value)? onChange;
  final FocusNode? focusNode;
  final Function()? onTap;
  final TextCapitalization textCapitalization;
  final bool readOnly;
  final bool enabled;
  final bool obscureText;
  final int? maxLines;
  final TextInputType? textInputType;
  final List<RegexValidation> validation;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? prefixText;
  final TextStyle? hintStyle;
  final int? maxLength;
  final TextInputAction? onAction;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode autovalidateMode;
  final EdgeInsets? contentPadding;
  final List<TextInputFormatter>? inputFormatters;

  const MainTextFormField(
      {super.key,
      required this.controller,
      this.onTap,
      this.hintText,
      this.initialValue,
      this.errorText,
      this.onChange,
      this.contentPadding,
      this.focusNode,
      this.textCapitalization = TextCapitalization.none,
      this.readOnly = false,
      this.enabled = true,
      this.obscureText = false,
      this.textInputType,
      this.maxLines = 1,
      this.validation = const [],
      this.labelText,
      this.suffixIcon,
      this.suffix,
      this.maxLength,
      this.onAction,
      this.validator,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.inputFormatters,
      this.hintStyle,
      this.prefixText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.bottom,
      onTap: onTap,
      controller: controller,
      onChanged: onChange,
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      readOnly: readOnly,
      enabled: enabled,
      obscureText: obscureText,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLines: maxLines,
      validator: validator ??
          ((validation.isEmpty)
              ? null
              : (String? value) {
                  String? error;
                  for (var element in validation) {
                    RegExp regExp = RegExp(element.regex);
                    if (!regExp.hasMatch(value!)) {
                      error = element.errorMesssage;
                    }
                  }
                  return error;
                }),
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        labelText: labelText,
        prefixText: prefixText,

        // labelStyle: TextUI.placeHolderBlack,
        errorText: errorText,
        floatingLabelStyle: TextStyle(
          fontSize: 16.sp,
          color: AppColors.blackPrimary,
        ),
        hintText: hintText,
        hintStyle: hintStyle,
        counterText: "",
        suffixIcon: suffixIcon,
        contentPadding:
            contentPadding ?? EdgeInsets.only(top: 5.h, bottom: 10.h),
        // contentPadding: EdgeInsets.zero,
        suffixIconConstraints: BoxConstraints(minWidth: 24.w, maxHeight: 24.w),
        suffix: suffix,
        isDense: true,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColors.disabled,
          ),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColors.disabled,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.red),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.red),
        ),
      ),
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      textInputAction: onAction,
    );
  }
}
