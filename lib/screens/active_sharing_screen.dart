import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_images.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:flutter/material.dart';

class ActiveSharingScreen extends StatelessWidget {
  static const id = "/ActiveSharingScreen";
  const ActiveSharingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.activeSharing,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Center(child: Image.asset(AppImages.activeSahring, width: 130)),
            ],
          ),
        ),
      ),
    );
  }
}
