import 'package:eventsapp/core/routes/app_router_config.dart';
import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/core/themes/app_text_themes.dart';
import 'package:eventsapp/features/bottom_nav_bar/bloc/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.safeAreaColor,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBloc>(
          create: (_) => BottomNavBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBgColor,
          brightness: Brightness.dark,
          textTheme: AppTextThemes.darkTextTheme,
        ),

        routerConfig: AppRouterConfig().router,
        title: 'Flutter Demo',
        theme: ThemeData(
          // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          //   backgroundColor: AppColors.scaffoldBgColor,
          // ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
