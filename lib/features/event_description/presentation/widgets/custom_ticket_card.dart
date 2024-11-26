import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketData extends StatelessWidget {
  final String eventImg;
  final String eventName;
  final String eventDescription;
  final String eventScheduledTime;
  final String eventScheduledDate;

  const TicketData({
    super.key,
    required this.eventImg,
    required this.eventName,
    required this.eventDescription,
    required this.eventScheduledTime,
    required this.eventScheduledDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            eventImg,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          textAlign: TextAlign.start,
          "Events",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: AppColors.textFieldHintColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          textAlign: TextAlign.start,
          eventName,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            color: AppColors.secondaryColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Date",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textFieldHintColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  textAlign: TextAlign.start,
                  eventScheduledDate,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),

            ///title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Time",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textFieldHintColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  textAlign: TextAlign.start,
                  eventScheduledTime,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          textAlign: TextAlign.start,
          "Event Description",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: AppColors.textFieldHintColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          textAlign: TextAlign.start,
          eventDescription,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
