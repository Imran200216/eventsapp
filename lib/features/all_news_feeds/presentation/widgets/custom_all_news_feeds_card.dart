import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAllNewsFeedsCard extends StatelessWidget {
  final String imgUrl;
  final String newsTitle;
  final VoidCallback onTap;

  const CustomAllNewsFeedsCard({
    super.key,
    required this.imgUrl,
    required this.newsTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.textFieldBgColor,
        ),
        child: Row(
          children: [
            /// Headline news image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                height: 200,
                width: 150,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 200,
                  width: 150,
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
              width: 12,
            ),

            /// Headline text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    newsTitle,
                    style: GoogleFonts.montserrat(
                      color: AppColors.secondaryColor,
                      fontSize: 14,
                    ),
                    softWrap: true,
                    maxLines: 3, // Limit lines to avoid overflowing.
                    overflow:
                        TextOverflow.ellipsis, // Add ellipsis for overflow.
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
