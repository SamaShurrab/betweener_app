import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/widgets/custom_button.dart';
import 'package:betweener_app/view/widgets/custom_label.dart';
import 'package:betweener_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditUserInfoScreen extends StatefulWidget {
  static const id = "/EditUserInfoScreen";
  const EditUserInfoScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return EditUserInfoScreenState();
  }
}

class EditUserInfoScreenState extends State<EditUserInfoScreen> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    nameController.dispose();
    super.dispose();
  }

  submitSave() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pop();
    }
  }

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
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLabel(labelName: AppStrings.name.toLowerCase()),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      labelName: AppStrings.name,
                      controller: nameController,
                      hint: "",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20),
                    CustomLabel(labelName: AppStrings.email.toLowerCase()),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      labelName: AppStrings.email,
                      controller: emailController,
                      hint: "",
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20),
                    CustomLabel(labelName: AppStrings.phone.toLowerCase()),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      labelName: AppStrings.phone,
                      controller: phoneController,
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
                        onPressed: () {
                          submitSave();
                        },
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
