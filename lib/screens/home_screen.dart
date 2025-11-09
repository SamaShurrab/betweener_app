import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_images.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:betweener_app/constant/collections.dart';
import 'package:betweener_app/custom_widget/social_media_acounts_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 12),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          InkWell(
            customBorder: CircleBorder(),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AppImages.scanning, width: 30, height: 30),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${AppStrings.hello} Ahmed!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(AppImages.qrCode),
              const SizedBox(height: 30),
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 81,
                endIndent: 81,
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: Collections.socialMediaAcoounts.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SocialMediaAcountsCard(
                      socialMediaPlatform:
                          index == Collections.socialMediaAcoounts.length
                          ? ""
                          : Collections.socialMediaAcoounts[index]["platform"]!,
                      socialMediaAccount:
                          index == Collections.socialMediaAcoounts.length
                          ? AppStrings.addLink
                          : Collections
                                .socialMediaAcoounts[index]["acountName"]!,
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
