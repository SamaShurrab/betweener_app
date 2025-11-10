import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final String labelName;
  final void Function()? onPressed;
  static final regexName = RegExp(r'^[A-Za-z\u0600-\u06FF]+$');
  static final regexEmail = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  static final regexPassword = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  static final regexLink = RegExp(
    r'^(https?:\/\/)?([\w\-]+\.)+[\w\-]+(\/[\w\-._~:/?#[\]@!$&()*+,;=]*)?$',
  );
  static final regexPhone = RegExp(r'^\d{10}$');

  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.keyboardType,
    required this.obscureText,
    required this.textInputAction,
    required this.controller,
    required this.labelName,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return AppStrings.emptyField;
        } else {
          if (labelName == AppStrings.name) {
            if (!regexName.hasMatch(value)) return AppStrings.nameError;
          }
          if (labelName == AppStrings.email) {
            if (!regexEmail.hasMatch(value)) return AppStrings.invalidEmail;
          }

          if (labelName == AppStrings.password) {
            if (!regexPassword.hasMatch(value))
              return AppStrings.invaildPasswors;
          }

          if (labelName == AppStrings.link) {
            if (!regexLink.hasMatch(value)) return AppStrings.invalidUrl;
          }

          if (labelName == AppStrings.phone) {
            if (!regexPhone.hasMatch(value)) return AppStrings.invalidPhone;
          }
        }
      },
      showCursor: true,
      obscureText: obscureText,
      cursorColor: AppColors.primaryColor,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 12,
          color: Colors.red,
          fontWeight: FontWeight.w500,
        ),
        hint: Text(
          hint,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.hintColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: labelName == AppStrings.password
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.primaryColor,
                ),
              )
            : null,
      ),
    );
  }
}
