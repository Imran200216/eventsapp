import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfileListTile extends StatelessWidget {
  final String iconName;
  final String titleName;
  final VoidCallback onTap;


  const CustomProfileListTile({
    super.key,
    required this.iconName,
    required this.titleName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(
        "assets/images/svg/$iconName.svg",
        height: 40,
        width: 40,
        fit: BoxFit.cover,
        color: AppColors.secondaryColor,
      ),
      title: Text(titleName),
      titleTextStyle: GoogleFonts.montserrat(
        color: AppColors.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppColors.secondaryColor,
        size: 20,
      ),
    );
  }
}
