import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBtn extends StatelessWidget {
  final double btnHeight;
  final double btnWidth;
  final String btnTitleText;
  final double btnTitleTextFontSize;
  final VoidCallback onTap;

  const CustomBtn({
    super.key,
    required this.btnHeight,
    required this.btnWidth,
    required this.btnTitleText,
    required this.btnTitleTextFontSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            btnTitleText,
            style: GoogleFonts.montserrat(
              color: AppColors.btnTitleColor,
              fontSize: btnTitleTextFontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
