import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/widgets/custom_card_user_information.dart';
import 'package:betweener_app/view/add%20new%20link/add_new_link_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "/ProfileScreen";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.of(context).pushNamed(AddNewLinkScreen.id);
        },
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(39),
          child: Column(children: [CustomCardUserInformation()]),
        ),
      ),
    );
  }
}
