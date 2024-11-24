import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddEventsFavoriteScreen extends StatelessWidget {
  const AddEventsFavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 30,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Find your favorite event's",
              style: GoogleFonts.montserrat(
                color: AppColors.textFieldHintColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Favourite's",
              style: GoogleFonts.montserrat(
                color: AppColors.secondaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
