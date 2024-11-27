import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEventHomeCard extends StatelessWidget {
  final String eventTitle;
  final VoidCallback onFavoriteTap;
  final String eventDate;
  final VoidCallback onCardTap;
  final String eventImg;

  const CustomEventHomeCard({
    super.key,
    required this.eventTitle,
    required this.onFavoriteTap,
    required this.eventDate,
    required this.onCardTap,
    required this.eventImg,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.eventCardBgColor,
      child: ListTile(
        onTap: onCardTap,
        contentPadding: const EdgeInsets.all(12),
        // Adjust padding
        leading: SizedBox(
          height: 180, // Set explicit height
          width: 120, // Set explicit width
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: eventImg,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/jpg/image-placeholder.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/jpg/error-placeholder.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text(eventTitle),
        titleTextStyle: GoogleFonts.montserrat(
          color: AppColors.secondaryColor,
        ),
        subtitle: Text(
          eventDate,
        ),
        subtitleTextStyle: GoogleFonts.montserrat(
          color: AppColors.subTitleTextColor,
        ),
        trailing: IconButton(
          onPressed: onFavoriteTap,
          icon: const Icon(Icons.favorite),
        ),
        isThreeLine: true,
      ),
    );
  }
}
