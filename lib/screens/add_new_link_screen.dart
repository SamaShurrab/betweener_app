import 'package:betweener_app/constant/app_colors.dart';
import 'package:betweener_app/constant/app_strings.dart';
import 'package:betweener_app/custom_widget/custom_button.dart';
import 'package:betweener_app/custom_widget/custom_label.dart';
import 'package:betweener_app/custom_widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewLinkScreen extends StatelessWidget {
  static const id = "/AddNewLinkScreen";
  const AddNewLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: AppColors.primaryColorLight,
        title: Text(
          AppStrings.addNewLink,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.heightOf(context) * (10 / 100)),
              CustomLabel(labelName: AppStrings.title),
              const SizedBox(height: 10),
              CustomTextFormField(
                hint: AppStrings.titleHint,
                keyboardType: TextInputType.text,
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
              CustomLabel(labelName: AppStrings.link),
              const SizedBox(height: 10),
              CustomTextFormField(
                hint: AppStrings.linkHint,
                keyboardType: TextInputType.url,
                obscureText: false,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: MediaQuery.heightOf(context) * (5 / 100)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: CustomButton(
                  buttonText: AppStrings.add,
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
      ),
    );
  }
}
