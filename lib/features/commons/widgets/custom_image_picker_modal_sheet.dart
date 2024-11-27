import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomImagePickerModalSheet extends StatelessWidget {
  final VoidCallback onPickImageFromGallery;
  final VoidCallback onPickImageFromCamera;
  final String modalSheetTitle;

  const CustomImagePickerModalSheet({
    super.key,
    required this.onPickImageFromGallery,
    required this.onPickImageFromCamera,
    required this.modalSheetTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: AppColors.scaffoldBgColor,
      ),
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              modalSheetTitle,
              style: GoogleFonts.montserrat(
                color: AppColors.secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: onPickImageFromCamera,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/images/svg/camera-icon.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                    color: AppColors.secondaryColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pick image from camera",
                    style: GoogleFonts.montserrat(
                      color: AppColors.secondaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: onPickImageFromGallery,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/images/svg/gallery-icon.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                    color: AppColors.secondaryColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pick image from gallery",
                    style: GoogleFonts.montserrat(
                      color: AppColors.secondaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
