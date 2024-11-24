import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/auth/presentation/widgets/custom_auth_password_text_field.dart';
import 'package:eventsapp/features/auth/presentation/widgets/custom_auth_text_field.dart';
import 'package:eventsapp/features/commons/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                "Create New Account",
                style: GoogleFonts.montserrat(
                  color: AppColors.titleTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              /// email text field
              const CustomAuthTextField(
                hintText: "Email",
                textFieldIcon: Icons.alternate_email,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 24,
              ),

              /// password text field
              CustomAuthPasswordTextField(
                hintText: "Password",
                textFieldIcon: Icons.password,
                textInputType: TextInputType.text,
                suffixIcon: Icons.visibility,
                onSuffixIconTap: () {
                  // Toggle password visibility logic here
                },
              ),

              const SizedBox(
                height: 40,
              ),

              /// sign up btn
              CustomBtn(
                btnTitleTextColor: AppColors.btnTitleColor,
                btnColor: AppColors.primaryColor,
                btnHeight: 52,
                btnWidth: double.infinity,
                btnTitleText: "Sign up",
                btnTitleTextFontSize: 16,
                onTap: () {},
              ),

              const Spacer(),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushNamed("loginScreen");
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
