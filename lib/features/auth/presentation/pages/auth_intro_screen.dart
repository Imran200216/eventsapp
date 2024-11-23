import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/commons/widgets/custom_btn.dart';
import 'package:eventsapp/features/on_boarding/presentation/widgets/custom_title_subtitle_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AuthIntroScreen extends StatelessWidget {
  const AuthIntroScreen({super.key});

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
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  "assets/images/svg/event-splash-logo.svg",
                  height: 28,
                  width: 28,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              const CustomTitleSubtitleOnBoarding(
                svgIconName: "auth-intro",
                titleText: "Grad all events now only in your hands",
                subTitleText:
                    "Stream is here to help you to find the best events based on your interest!",
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: CustomBtn(
                      btnTitleTextColor: AppColors.btnTitleColor,
                      btnColor: AppColors.primaryColor,
                      btnHeight: 48,
                      btnWidth: double.infinity,
                      btnTitleText: "Login",
                      btnTitleTextFontSize: 14,
                      onTap: () {
                        context.goNamed("loginScreen");
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: CustomBtn(
                      btnTitleTextColor:
                          AppColors.lightColoredBtnTextTitleColor,
                      btnColor: AppColors.secondaryColor,
                      btnHeight: 52,
                      btnWidth: double.infinity,
                      btnTitleText: "Sign up",
                      btnTitleTextFontSize: 14,
                      onTap: () {
                        context.goNamed("registerScreen");
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
