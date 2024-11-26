import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/home/presentation/widgets/custom_event_home_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Container(
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    width: 55,
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
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Dhanush V.",
                        style: GoogleFonts.montserrat(
                          color: AppColors.secondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Find your favorite event's",
                        style: GoogleFonts.montserrat(
                          color: AppColors.textFieldHintColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Your Daily Events",
                style: GoogleFonts.montserrat(
                  color: AppColors.secondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 24,
                itemBuilder: (context, index) {
                  return CustomEventHomeCard(
                    eventTitle: "Event title",
                    onFavoriteTap: () {},
                    eventDate: "05/11/2002",
                    onCardTap: () {
                      context.pushNamed("eventDescriptionScreen");
                    },
                    eventImg:
                        "https://plus.unsplash.com/premium_photo-1670315264879-59cc6b15db5f?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
