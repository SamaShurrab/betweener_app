import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_images.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:betweener_app/custom_widget/custom_button.dart';
import 'package:betweener_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static const id = "/OnboardingScreen";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImages.onboradingImage,
                width: double.infinity,
                height: MediaQuery.heightOf(context) * (25 / 100),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              AppStrings.onboardingString,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: MediaQuery.heightOf(context) * (20 / 100)),
            CustomButton(
              isLoginGoogle: false,
              borderColor: AppColors.secondaryColor,
              background: AppColors.secondaryColor,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginScreen.id);
              },
              buttonText: AppStrings.getStarted,
              textColor: AppColors.textButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
