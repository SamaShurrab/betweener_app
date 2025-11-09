import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:betweener_app/custom_widget/custom_button.dart';
import 'package:betweener_app/custom_widget/custom_label.dart';
import 'package:betweener_app/custom_widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditUserInfoScreen extends StatelessWidget {
  static const id = "/EditUserInfoScreen";
  const EditUserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColorLight,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          AppStrings.editUserInfo,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Column(
            children: [
              const SizedBox(height: 50),
              ClipRRect(
                child: Card(
                  shape: CircleBorder(),
                  color: AppColors.primaryColorLight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 150,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},

                child: Text(
                  AppStrings.changePhoto,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLabel(labelName: AppStrings.name.toLowerCase()),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      hint: "",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20),
                    CustomLabel(labelName: AppStrings.email.toLowerCase()),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      hint: "",
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20),
                    CustomLabel(labelName: AppStrings.phone.toLowerCase()),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      hint: "",
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: MediaQuery.heightOf(context) * (5 / 100)),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: CustomButton(
                        buttonText: AppStrings.save,
                        textColor: AppColors.textButtonColor,
                        onPressed: () {},
                        background: AppColors.secondaryColor,
                        borderColor: AppColors.secondaryColor,
                        isLoginGoogle: false,
                      ),
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
