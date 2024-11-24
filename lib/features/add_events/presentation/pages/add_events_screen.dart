import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AddEventsScreen extends StatelessWidget {
  const AddEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: Center(
        child: Text("events"),
      ),
    );
  }
}
