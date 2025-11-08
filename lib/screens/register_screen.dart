import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_images.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:betweener_app/custom_widget/custom_button.dart';
import 'package:betweener_app/custom_widget/custom_label.dart';
import 'package:betweener_app/custom_widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const id = "/RegisterScreen";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primaryColor,
            size: 32,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.loginRegisterImage,
                  height: 92,
                  width: 154,
                ),
              ),
              const SizedBox(height: 60),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLabel(labelName: AppStrings.name),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      hint: AppStrings.hintName,
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 30),
                    CustomLabel(labelName: AppStrings.email),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      hint: AppStrings.hintEmail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30),
                    CustomLabel(labelName: AppStrings.password),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      hint: AppStrings.hintPassword,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      isLoginGoogle: false,
                      borderColor: AppColors.secondaryColor,
                      background: AppColors.secondaryColor,
                      buttonText: AppStrings.register,
                      textColor: AppColors.textButtonColor,
                      width: double.infinity,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "- ${AppStrings.or} -",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.hintColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                isLoginGoogle: true,
                borderColor: AppColors.googleButtonColor,
                background: Colors.white,
                buttonText: AppStrings.loginInGoogle,
                textColor: AppColors.googleButtonColor,
                width: double.infinity,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
