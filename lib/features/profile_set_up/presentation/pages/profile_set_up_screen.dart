import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/auth/presentation/widgets/custom_auth_text_field.dart';
import 'package:eventsapp/features/commons/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSetUpScreen extends StatelessWidget {
  const ProfileSetUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 30,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.secondaryColor,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.start,
                "Profile",
                style: GoogleFonts.montserrat(
                  color: AppColors.titleTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.textFieldBgColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add Photo",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: AppColors.textBtnTextColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  /// first name text field
                  Expanded(
                    child: CustomAuthTextField(
                      hintText: "First name",
                      textFieldIcon: Icons.person,
                      textInputType: TextInputType.name,
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  /// last name text field
                  Expanded(
                    child: CustomAuthTextField(
                      hintText: "Last name",
                      textFieldIcon: Icons.person,
                      textInputType: TextInputType.name,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 14,
              ),

              /// email text field
              const CustomAuthTextField(
                hintText: "Email",
                textFieldIcon: Icons.alternate_email,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 14,
              ),

              /// email text field
              const CustomAuthTextField(
                hintText: "Gender",
                textFieldIcon: Icons.male,
                textInputType: TextInputType.text,
              ),

              const SizedBox(
                height: 14,
              ),

              /// date of birth text field
              const CustomAuthTextField(
                hintText: "Date of Birth",
                textFieldIcon: Icons.celebration,
                textInputType: TextInputType.text,
              ),

              const Spacer(),

              CustomBtn(
                btnTitleTextColor: AppColors.btnTitleColor,
                btnColor: AppColors.primaryColor,
                onTap: () {
                  context.pushNamed("bottomNavBar");
                },
                btnHeight: 52,
                btnWidth: double.infinity,
                btnTitleText: "Continue",
                btnTitleTextFontSize: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
