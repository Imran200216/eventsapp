import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  /// turn on switch
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textFieldBgColor,
          centerTitle: true,
          title: const Text("Notification"),
          titleTextStyle: GoogleFonts.montserrat(
            color: AppColors.secondaryColor,
            fontSize: 16,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
            top: 30,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                SvgPicture.asset(
                  "assets/images/svg/notification-allow-icon.svg",
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 40,
                ),
                Card(
                  color: const Color(0xFF292929),
                  child: ListTile(
                    leading: SvgPicture.asset(
                      isSwitched == true
                          ? "assets/images/svg/notification-on-icon.svg"
                          : "assets/images/svg/notification-off-icon.svg",
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                      color: isSwitched == true ? Colors.yellow : Colors.grey,
                    ),
                    title: const Text("Allow notification"),
                    titleTextStyle: GoogleFonts.montserrat(
                      color: AppColors.textFieldHintColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    trailing: Switch.adaptive(
                      activeColor: AppColors.primaryColor,
                      value: isSwitched,
                      onChanged: (bool newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      },
                    ),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
