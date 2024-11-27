import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllNewsFeedsDescriptionScreen extends StatelessWidget {
  const AllNewsFeedsDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textFieldBgColor,
          centerTitle: true,
          title: const Text("News Title"),
          titleTextStyle: GoogleFonts.montserrat(
            color: AppColors.secondaryColor,
            fontSize: 16,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 30,
              bottom: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Headline news image
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://images.unsplash.com/photo-1721332153289-0c46dc38981b?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/jpg/image-placeholder.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      height: 200,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/jpg/error-placeholder.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                /// news chips
                Chip(
                  label: Text(
                    "Information",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white, // Adjust text color
                    ),
                  ),
                  backgroundColor: Colors.grey[800],
                  // Adjust chip background color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),

                const SizedBox(
                  height: 20,
                ),

                /// news subtitle
                Text(
                  textAlign: TextAlign.start,
                  '''Success is not an overnight achievement; it is the result of consistent effort, determination, and a willingness to learn from failures. Every small step taken toward a goal builds the foundation for greater accomplishments. Challenges along the way are not obstacles but opportunities to grow stronger and more resilient. By staying focused, adapting to change, and maintaining a positive mindset, individuals can overcome barriers and achieve the extraordinary. Ultimately, success is about perseverance, a clear vision, and the courage to keep moving forward, even when the path seems uncertain.''',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.subTitleTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
