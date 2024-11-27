import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEventsMaxLineTextField extends StatelessWidget {
  final String hintText;
  final IconData textFieldIcon;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  final String textFiledName;

  const CustomEventsMaxLineTextField({
    super.key,
    required this.hintText,
    required this.textFieldIcon,
    this.textEditingController,
    required this.textInputType,
    required this.textFiledName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textFiledName,
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
          maxLines: 5,
          style: GoogleFonts.montserrat(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
          ),
          onChanged: (value) {
            // Restrict to 20 words
            List<String> words = value
                .split(RegExp(r'\s+'))
                .where((word) => word.isNotEmpty)
                .toList();
            if (words.length > 20) {
              textEditingController?.text = words.sublist(0, 20).join(' ');
              textEditingController?.selection = TextSelection.fromPosition(
                TextPosition(offset: textEditingController!.text.length),
              );
            }
          },
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
              color: AppColors.textFieldHintColor,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            fillColor: AppColors.textFieldBgColor,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 6.0,
                right: 10.0,
                bottom: 102,
              ),
              child: Icon(
                textFieldIcon,
                color: AppColors.textFieldHintColor,
              ),
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
              borderRadius: BorderRadius.circular(30),
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
