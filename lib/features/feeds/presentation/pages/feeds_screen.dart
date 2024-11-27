import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/all_news_feeds/presentation/pages/all_news_feeds_screen.dart';
import 'package:eventsapp/features/headline-news/presentation/pages/headline_news_feeds_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            centerTitle: true,
            leading: const SizedBox(),
            backgroundColor: AppColors.primaryColor,
            title: Text("my feeds".toUpperCase()),
            titleTextStyle: GoogleFonts.montserrat(
              color: AppColors.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: ColoredBox(
                color: AppColors.primaryColor,
                child: TabBar(
                  indicatorColor: Colors.white,
                  // Indicator color when selected
                  labelColor: Colors.white,
                  // Text/Icon color when selected
                  unselectedLabelColor: Colors.black,
                  // Text/Icon color when not selected
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.new_releases_outlined,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.newspaper_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.scaffoldBgColor,
        body: const TabBarView(
          children: [
            /// Headline Tab content
            HeadlineNewsFeedsScreen(),

            /// News Tab content
            AllNewsFeedsScreen(),
          ],
        ),
      ),
    );
  }
}
