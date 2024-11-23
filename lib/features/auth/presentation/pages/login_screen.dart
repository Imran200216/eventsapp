import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/auth/presentation/widgets/custom_auth_password_text_field.dart';
import 'package:eventsapp/features/auth/presentation/widgets/custom_auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Login",
                style: GoogleFonts.montserrat(
                  color: AppColors.titleTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomAuthTextField(
                hintText: "Email",
                textFieldIcon: Icons.alternate_email,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomAuthPasswordTextField(
                hintText: "Password",
                textFieldIcon: Icons.password,
                textInputType: TextInputType.text,
                suffixIcon: Icons.visibility,
                onSuffixIconTap: () {
                  // Toggle password visibility logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
