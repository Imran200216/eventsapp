import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: InkWell(
            onTap: () {
              context.pushNamed("onBoardingFirstScreen");
            },
            child: SvgPicture.asset(
              "assets/images/svg/event-splash-logo.svg",
              height: 140,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
