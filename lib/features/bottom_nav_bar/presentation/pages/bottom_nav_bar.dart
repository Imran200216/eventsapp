import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/features/add_events/presentation/pages/add_events_screen.dart';
import 'package:eventsapp/features/add_events_favorite/presentation/pages/add_events_favorite_screen.dart';
import 'package:eventsapp/features/bottom_nav_bar/bloc/bottom_nav_bloc.dart';
import 'package:eventsapp/features/feeds/presentation/pages/feeds_screen.dart';
import 'package:eventsapp/features/home/presentation/pages/home_screen.dart';
import 'package:eventsapp/features/profile/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    /// Bottom navigation bar screens
    final List<Widget> widgetList = [
      const HomeScreen(),
      const FeedsScreen(),
      const AddEventsScreen(),
      const AddEventsFavoriteScreen(),
      const ProfileScreen(),
    ];

    return SafeArea(
      child: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldBgColor,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              onTap: (index) {
                context.read<BottomNavBloc>().add(BottomNavIndexChanged(index));
              },
              currentIndex: state.currentIndex,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.textFieldHintColor,
              unselectedLabelStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: AppColors.textFieldHintColor,
              ),
              selectedLabelStyle: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/svg/home-icon.svg',
                    color: state.currentIndex == 0
                        ? AppColors.primaryColor
                        : AppColors.textFieldHintColor,
                    height: 30,
                    width: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/svg/feeds-icon.svg',
                    color: state.currentIndex == 1
                        ? AppColors.primaryColor
                        : AppColors.textFieldHintColor,
                    height: 30,
                    width: 30,
                  ),
                  label: 'Feeds',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/svg/add-icon.svg',
                    color: state.currentIndex == 2
                        ? AppColors.primaryColor
                        : AppColors.textFieldHintColor,
                    height: 30,
                    width: 30,
                  ),
                  label: 'Add Events',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/svg/favorite-icon.svg',
                    color: state.currentIndex == 3
                        ? AppColors.primaryColor
                        : AppColors.textFieldHintColor,
                    height: 30,
                    width: 30,
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/svg/profile-icon.svg',
                    color: state.currentIndex == 4
                        ? AppColors.primaryColor
                        : AppColors.textFieldHintColor,
                    height: 30,
                    width: 30,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: IndexedStack(
              index: state.currentIndex,
              children: widgetList,
            ),
          );
        },
      ),
    );
  }
}
