import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_images.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/auth/login_screen.dart';
import 'package:betweener_app/view/widgets/custom_button.dart';
import 'package:betweener_app/view/widgets/custom_label.dart';
import 'package:betweener_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const id = "/RegisterScreen";

  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  bool isVisible = true;
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController nameController = TextEditingController();

  submitRegister() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed(LoginScreen.id);
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.loginRegisterImage,
                  height: 92,
                  width: 154,
                ),
              ),
              const SizedBox(height: 60),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLabel(labelName: AppStrings.name),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      labelName: AppStrings.name,
                      controller: nameController,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      hint: AppStrings.hintName,
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 30),
                    CustomLabel(labelName: AppStrings.email),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      labelName: AppStrings.email,
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      hint: AppStrings.hintEmail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30),
                    CustomLabel(labelName: AppStrings.password),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      labelName: AppStrings.password,
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: isVisible,
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      hint: AppStrings.hintPassword,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      isLoginGoogle: false,
                      borderColor: AppColors.secondaryColor,
                      background: AppColors.secondaryColor,
                      buttonText: AppStrings.register,
                      textColor: AppColors.textButtonColor,
                      onPressed: () {
                        submitRegister();
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "- ${AppStrings.or} -",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.hintColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                isLoginGoogle: true,
                borderColor: AppColors.googleButtonColor,
                background: Colors.white,
                buttonText: AppStrings.loginInGoogle,
                textColor: AppColors.googleButtonColor,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
