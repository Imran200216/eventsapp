import 'package:dotted_border/dotted_border.dart';
import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/add_events/presentation/widgets/custom_events_max_line_text_field.dart';
import 'package:eventsapp/features/add_events/presentation/widgets/custom_events_text_field.dart';
import 'package:eventsapp/features/commons/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddEventsScreen extends StatelessWidget {
  const AddEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Add your new event's",
                style: GoogleFonts.montserrat(
                  color: AppColors.textFieldHintColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Schedule",
                style: GoogleFonts.montserrat(
                  color: AppColors.secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              /// upload an image
              InkWell(
                onTap: () {},
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  dashPattern: const [8, 4],
                  // Customize dash pattern
                  color: Colors.grey,
                  // Customize the border color
                  strokeWidth: 1.1,
                  // Customize the stroke width
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.textFieldBgColor,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/svg/upload-icon.svg",
                            height: 36,
                            color: Colors.grey,
                            width: 36,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Upload an image",
                            style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              /// event name text field
              const CustomEventsMaxLineTextField(
                textFiledName: "Event name",
                hintText: "Enroll your event...",
                textFieldIcon: Icons.event_available,
                textInputType: TextInputType.multiline,
              ),

              /// event description text field
              const CustomEventsMaxLineTextField(
                hintText: "Enroll event description...",
                textFieldIcon: Icons.description_outlined,
                textInputType: TextInputType.multiline,
                textFiledName: "Event description",
              ),

              /// event date text filed (date picker)
              CustomEventsTextField(
                hintText: "Enroll event date",
                textFieldIcon: Icons.event_note_rounded,
                textInputType: TextInputType.datetime,
                textFieldName: "Event date",
                suffixIcon: Icons.date_range_outlined,
                onSuffixIconTap: () {},
              ),

              /// event time text filed
              CustomEventsTextField(
                hintText: "Enroll event time",
                textFieldIcon: Icons.event_note_rounded,
                textInputType: TextInputType.datetime,
                textFieldName: "Event time",
                suffixIcon: Icons.timelapse_outlined,
                onSuffixIconTap: () {},
              ),

              const SizedBox(
                height: 30,
              ),

              /// add event btn
              CustomBtn(
                btnHeight: 50,
                btnWidth: double.infinity,
                btnTitleText: "Enroll my event",
                btnTitleTextFontSize: 14,
                onTap: () {},
                btnColor: AppColors.primaryColor,
                btnTitleTextColor: AppColors.secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
