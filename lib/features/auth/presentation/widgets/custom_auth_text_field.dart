import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthTextField extends StatelessWidget {
  final String hintText;
  final IconData textFieldIcon;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;

  const CustomAuthTextField({
    super.key,
    required this.hintText,
    required this.textFieldIcon,
    this.textEditingController,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      controller: textEditingController,
      style: GoogleFonts.montserrat(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.montserrat(
          color: AppColors.textFieldHintColor,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: AppColors.textFieldBgColor,
        prefixIcon: Icon(
          textFieldIcon,
          color: AppColors.textFieldHintColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.4,
          ),
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
      ),
    );
  }
}
