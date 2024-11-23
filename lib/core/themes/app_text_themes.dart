import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextThemes {
  /// dark Theme Text Styles
  static TextTheme darkTextTheme = TextTheme(
    // displayLarge: TextStyle(
    //   fontSize: 32.0,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
    // displayMedium: TextStyle(
    //   fontSize: 28.0,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
    // displaySmall: TextStyle(
    //   fontSize: 24.0,
    //   fontWeight: FontWeight.w600,
    //   color: Colors.black,
    // ),
    bodyLarge: GoogleFonts.montserrat(
      color: AppColors.titleTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.montserrat(
      color: AppColors.subTitleTextColor,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.montserrat(
      color: AppColors.titleTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  );
}
