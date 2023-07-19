import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData theme = ThemeData(
    primaryColor: AppColors.greenPrimary,
    scaffoldBackgroundColor: Colors.white,
    unselectedWidgetColor: const Color(0xffb5b5b5),
    textTheme: GoogleFonts.openSansTextTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.greenPrimary,
      background: Colors.white,
      secondary: Colors.black,
    ),
  );
}
