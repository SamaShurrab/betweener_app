import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "/ProfileScreen";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.profile,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
