import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the onboarding screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      context.goNamed("onBoardingFirstScreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: SvgPicture.asset(
            "assets/images/svg/event-splash-logo.svg",
            height: 140,
            width: 140,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
