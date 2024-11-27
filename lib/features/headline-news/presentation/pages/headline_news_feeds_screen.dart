import 'package:eventsapp/features/headline-news/presentation/widgets/custom_headline_news_feeds_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeadlineNewsFeedsScreen extends StatelessWidget {
  const HeadlineNewsFeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 30,
        top: 30,
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
        itemCount: 20,
        itemBuilder: (context, index) {
          return CustomHeadlineNewsFeedsCard(
            imgUrl:
                "https://images.unsplash.com/photo-1720048169707-a32d6dfca0b3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            newsTitle: "Success never be fail",
            onTap: () {
              context.pushNamed("headlineNewsFeedsDescriptionScreen");
            },
          );
        },
      ),
    );
  }
}
