import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNoItemAddedWidget extends StatelessWidget {
  final String text;
  final String iconName;

  const CustomNoItemAddedWidget({
    super.key,
    required this.text,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/svg/$iconName.svg",
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(
            color: AppColors.textFieldHintColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
