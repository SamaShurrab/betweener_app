import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_images.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final Color textColor;
  final void Function()? onPressed;
  final Color background;
  final Color borderColor;
  final bool isLoginGoogle;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.textColor,
    required this.width,
    required this.onPressed,
    required this.background,
    required this.borderColor,
    required this.isLoginGoogle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: isLoginGoogle
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(AppImages.googleImage, width: 24, height: 24),
                  Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            : Text(
                buttonText,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
