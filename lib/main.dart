import 'package:eventsapp/core/routes/app_router_config.dart';
import 'package:eventsapp/core/themes/app_colors.dart';
import 'package:eventsapp/core/themes/app_text_themes.dart';
import 'package:eventsapp/features/add_events_favorite/bloc/add_events_favorties_bloc.dart';
import 'package:eventsapp/features/bottom_nav_bar/bloc/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  /// loading env files for our app
  await dotenv.load(
    fileName: "assets/.env",
  );

  /// supa base setup
  await Supabase.initialize(
    url: "${dotenv.env['DB_PROJECT_URL']}",
    anonKey: "${dotenv.env['DB_APIKEY']}",
  );

  /// safe area bg color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.safeAreaColor,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// bottom nav bar bloc`
        BlocProvider<BottomNavBloc>(
          create: (context) => BottomNavBloc(),
        ),

        /// add events favorite bloc
        BlocProvider<AddEventsFavortiesBloc>(
          create: (context) => AddEventsFavortiesBloc(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBgColor,
          brightness: Brightness.dark,
          textTheme: AppTextThemes.darkTextTheme,
        ),
        routerConfig: AppRouterConfig.router,
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
