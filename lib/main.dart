import 'package:betweener_app/constant/app_strings.dart';
import 'package:betweener_app/screens/onboarding_screen.dart';
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
      theme: ThemeData(fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      routes: {
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
      },
    );
  }
}
