import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEventsTextField extends StatelessWidget {
  final String hintText;
  final IconData textFieldIcon;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final String textFieldName;

  const CustomEventsTextField({
    super.key,
    required this.hintText,
    required this.textFieldIcon,
    this.textEditingController,
    required this.textInputType,
    this.suffixIcon,
    this.onSuffixIconTap,
    required this.textFieldName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textFieldName,
          style: GoogleFonts.montserrat(
            color: AppColors.textFieldHintColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
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
            suffixIcon: suffixIcon != null
                ? InkWell(
                    onTap: onSuffixIconTap, // Add interactivity
                    child: Icon(
                      suffixIcon,
                      color: AppColors.textFieldHintColor,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.4,
              ),
              borderRadius: BorderRadius.circular(30), // Same border radius
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
