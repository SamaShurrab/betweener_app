import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/edit%20user%20info/edit_user_info_screen.dart';
import 'package:flutter/material.dart';

class CustomCardUserInformation extends StatelessWidget {
  const CustomCardUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                child: Card(
                  shape: CircleBorder(),
                  color: AppColors.primaryColorLight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: () {
                          Navigator.of(
                            context,
                          ).pushNamed(EditUserInfoScreen.id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      AppStrings.hintName,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      AppStrings.hintEmail.toLowerCase(),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "+9700000000",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: List.generate(2, (index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: AppColors.secondaryColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            child: Text(
                              index == 0
                                  ? "${AppStrings.followers} 233"
                                  : "${AppStrings.following} 400",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
