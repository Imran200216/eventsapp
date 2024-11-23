import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/commons/widgets/custom_btn.dart';
import 'package:eventsapp/features/on_boarding/presentation/widgets/custom_title_subtitle_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: Container(
          margin: const EdgeInsets.only(
            left: 20,
            top: 30,
            bottom: 30,
            right: 20,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  svgIconName: "on-boarding-screen-2",
                  titleText: "Discover Experiences Tailored for You",
                  subTitleText:
                      "Explore events curated to match your passions and make every moment unforgettable.",
                ),
                const Spacer(),
                CustomBtn(
                  btnTitleTextColor: AppColors.btnTitleColor,
                  btnColor: AppColors.primaryColor,
                  onTap: () {
                    context.pushNamed("authIntroScreen");
                  },
                  btnHeight: 48,
                  btnWidth: double.infinity,
                  btnTitleText: "Next",
                  btnTitleTextFontSize: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
