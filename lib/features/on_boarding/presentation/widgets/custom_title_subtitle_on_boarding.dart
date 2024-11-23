import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitleSubtitleOnBoarding extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final String svgIconName;

  const CustomTitleSubtitleOnBoarding({
    super.key,
    required this.titleText,
    required this.subTitleText,
    required this.svgIconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /// on boarding svg
        SvgPicture.asset(
          "assets/images/svg/$svgIconName.svg",
          height: 340,
          width: 340,
          fit: BoxFit.cover,
        ),

        Text(
          textAlign: TextAlign.start,
          titleText,
          style: GoogleFonts.montserrat(
            color: AppColors.titleTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subTitleText,
          style: GoogleFonts.montserrat(
            color: AppColors.subTitleTextColor,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
