import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/screens/active_sharing_screen.dart';
import 'package:betweener_app/screens/home_screen.dart';
import 'package:betweener_app/screens/login_screen.dart';
import 'package:betweener_app/screens/main_screen.dart';
import 'package:betweener_app/screens/onboarding_screen.dart';
import 'package:betweener_app/screens/profile_screen.dart';
import 'package:betweener_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   elevation: 0,
        //   backgroundColor: AppColors.primaryColor,
        //   type: BottomNavigationBarType.fixed,
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
        //   selectedIconTheme: IconThemeData(size: 35, color: Colors.white),
        // ),
        fontFamily: "Roboto",
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.primaryColor, size: 32),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      routes: {
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ActiveSharingScreen.id: (context) => ActiveSharingScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}
