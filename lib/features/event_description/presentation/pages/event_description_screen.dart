import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/event_description/presentation/widgets/custom_ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';

class EventDescriptionScreen extends StatelessWidget {
  const EventDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldBgColor,
          centerTitle: true,
          title: const Text("Events"),
          titleTextStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryColor,
            fontSize: 18,
          ),
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.secondaryColor,
              size: 24,
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 30,
            bottom: 30,
          ),
          child: const Center(
            child: TicketWidget(
              color: AppColors.textFieldBgColor,
              width: 350,
              height: 500,
              isCornerRounded: true,
              padding: EdgeInsets.all(20),
              child: TicketData(
                eventDescription: "Hi i will definetly complete it",
                eventImg:
                    "https://plus.unsplash.com/premium_photo-1670315264879-59cc6b15db5f?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                eventName: "Working schedule",
                eventScheduledDate: "23/09/2022",
                eventScheduledTime: "3.00pm",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
