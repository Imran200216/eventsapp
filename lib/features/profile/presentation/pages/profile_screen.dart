import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/profile/presentation/widgets/custom_profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// profile image
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                /// profile name
                Text(
                  "Imran B",
                  style: GoogleFonts.montserrat(
                    color: AppColors.secondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),

                /// profile person email address
                Text(
                  "imran@gmail.com",
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFFDADADA),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                Card(
                  color: const Color(0xFF292929),
                  child: ListTile(
                    leading: SvgPicture.asset(
                      "assets/images/svg/events-achievements-icon.svg",
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                    title: const Text("Events Completed"),
                    titleTextStyle: GoogleFonts.montserrat(
                      color: AppColors.textFieldHintColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    trailing: Text(
                      "12",
                      style: GoogleFonts.montserrat(
                        color: AppColors.secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                CustomProfileListTile(
                  iconName: "notification-icon",
                  titleName: "Notification",
                  onTap: () {},
                ),

                const SizedBox(
                  height: 10,
                ),

                CustomProfileListTile(
                  iconName: "signout-icon",
                  titleName: "Signout",
                  onTap: () {},
                ),

                const Spacer(
                  flex: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
