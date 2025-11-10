import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/collections.dart';
import 'package:flutter/material.dart';

class SocialMediaAcountsCard extends StatelessWidget {
  final String socialMediaPlatform;
  final String socialMediaAccount;
  final int index;
  const SocialMediaAcountsCard({
    super.key,
    required this.socialMediaPlatform,
    required this.socialMediaAccount,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor = index == Collections.socialMediaAcoounts.length
        ? AppColors.primaryColor
        : AppColors.textButtonColor;
    Color cardColor = index == Collections.socialMediaAcoounts.length
        ? AppColors.primaryColorLight
        : AppColors.secondaryColorLight;
    FontWeight fontWeight = index == Collections.socialMediaAcoounts.length
        ? FontWeight.w600
        : FontWeight.w300;
    double fontSize = index == Collections.socialMediaAcoounts.length ? 18 : 15;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        height: 100,
        width: 140,
        child: InkWell(
          onTap: index == Collections.socialMediaAcoounts.length ? () {} : null,
          child: Card(
            elevation: 0,
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  index == Collections.socialMediaAcoounts.length
                      ? Icon(Icons.add, size: 30)
                      : Text(
                          socialMediaPlatform,
                          style: TextStyle(
                            color: AppColors.textButtonColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  Text(
                    socialMediaAccount,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
