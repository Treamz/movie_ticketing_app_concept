import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_ticketing_app_concept/presentation/home_page/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Ticketing App Concept',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: AppColors.backgroundColor,
          error: AppColors.backgroundColor,
          onError: AppColors.backgroundColor,
          background: Colors.white,
          onBackground: Colors.white,
          surface: AppColors.backgroundColor,
          onSurface: Colors.white,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: const TextTheme(
            labelSmall: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            labelMedium: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            bodySmall: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
            headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),

            titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            headlineMedium:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            headlineSmall:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class AppColors {
  static const backgroundColor = Color(0xFF1E1F27);
  static const coralColor = Color(0xFFD98639);
  static const greyColor = Color(0xFF484747);
  static const searchBarColor = Color.fromRGBO(105, 105, 105, 0.80);
  static const cardColor = Color(0xFF767678);
  static const greySeatColor = Color(0xFFC4C4C4);
}
