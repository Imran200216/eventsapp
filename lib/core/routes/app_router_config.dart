import 'package:eventsapp/features/add_events/presentation/pages/add_events_screen.dart';
import 'package:eventsapp/features/auth/presentation/pages/auth_intro_screen.dart';
import 'package:eventsapp/features/auth/presentation/pages/login_screen.dart';
import 'package:eventsapp/features/auth/presentation/pages/register_screen.dart';
import 'package:eventsapp/features/bottom_nav_bar/presentation/pages/bottom_nav_bar.dart';
import 'package:eventsapp/features/feeds/presentation/pages/feeds_screen.dart';
import 'package:eventsapp/features/home/presentation/pages/home_screen.dart';
import 'package:eventsapp/features/on_boarding/presentation/pages/on_boarding_first_screen.dart';
import 'package:eventsapp/features/on_boarding/presentation/pages/on_boarding_second_screen.dart';
import 'package:eventsapp/features/profile/presentation/pages/profile_screen.dart';
import 'package:eventsapp/features/profile_set_up/presentation/pages/profile_set_up_screen.dart';
import 'package:eventsapp/features/splash/presentation/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  GoRouter router = GoRouter(
    routes: [
      /// splash screen
      GoRoute(
        path: "/",
        name: "splashScreen",
        builder: (context, state) {
          return const SplashScreen();
        },
      ),

      /// on boarding first screen
      GoRoute(
        path: "/onBoardingFirstScreen",
        name: "onBoardingFirstScreen",
        builder: (context, state) {
          return const OnBoardingFirstScreen();
        },
      ),

      /// on boarding second screen
      GoRoute(
        path: "/onBoarding",
        name: "onBoardingSecondScreen",
        builder: (context, state) {
          return const OnBoardingSecondScreen();
        },
      ),

      /// auth intro screen
      GoRoute(
        path: "/authIntroScreen",
        name: "authIntroScreen",
        builder: (context, state) {
          return const AuthIntroScreen();
        },
      ),

      /// login screen
      GoRoute(
        path: "/loginScreen",
        name: "loginScreen",
        builder: (context, state) {
          return const LoginScreen();
        },
      ),

      /// register screen
      GoRoute(
        path: "/registerScreen",
        name: "registerScreen",
        builder: (context, state) {
          return const RegisterScreen();
        },
      ),

      /// profile screen setup
      GoRoute(
        path: "/profileSetUpScreen",
        name: "profileSetUpScreen",
        builder: (context, state) {
          return const ProfileSetUpScreen();
        },
      ),

      /// bottom nav bar
      GoRoute(
        path: "/bottomNavBar",
        name: "bottomNavBar",
        builder: (context, state) {
          return const BottomNavBar();
        },
      ),

      /// home screen
      GoRoute(
        path: "/homeScreen",
        name: "homeScreen",
        builder: (context, state) {
          return const HomeScreen();
        },
      ),

      /// feeds screen
      GoRoute(
        path: "/feedsScreen",
        name: "feedsScreen",
        builder: (context, state) {
          return const FeedsScreen();
        },
      ),

      /// add events screen
      GoRoute(
        path: "/addEventsScreen",
        name: "addEventsScreen",
        builder: (context, state) {
          return const AddEventsScreen();
        },
      ),

      /// profile Screen
      GoRoute(
        path: "/profileScreen",
        name: "profileScreen",
        builder: (context, state) {
          return const ProfileScreen();
        },
      ),
    ],
  );
}
