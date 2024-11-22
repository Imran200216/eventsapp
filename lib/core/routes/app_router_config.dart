import 'package:eventsapp/features/auth/presentation/pages/login_screen.dart';
import 'package:eventsapp/features/auth/presentation/pages/register_screen.dart';
import 'package:eventsapp/features/on_boarding/presentation/pages/on_boarding_first_screen.dart';
import 'package:eventsapp/features/on_boarding/presentation/pages/on_boarding_second_screen.dart';
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
    ],
  );
}
