import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextInputAction textInputAction;
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.keyboardType,
    required this.obscureText,
    required this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: true,
      obscureText: obscureText,
      cursorColor: AppColors.primaryColor,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 16,
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
      ),
    );
  }
}
