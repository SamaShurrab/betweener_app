import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_images.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/main_screen.dart';
import 'package:betweener_app/view/widgets/custom_button.dart';
import 'package:betweener_app/view/widgets/custom_label.dart';
import 'package:betweener_app/view/widgets/custom_text_form_field.dart';
import 'package:betweener_app/view/auth/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const id = "/LoginScreen";

  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  void submitLogin() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed(MainScreen.id);
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.heightOf(context) * (10 / 100)),
              Center(
                child: Image.asset(
                  AppImages.loginRegisterImage,
                  height: 152,
                  width: 254,
                ),
              ),
              const SizedBox(height: 60),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: isVisible,
                      hint: AppStrings.hintPassword,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      isLoginGoogle: false,
                      borderColor: AppColors.secondaryColor,
                      background: AppColors.secondaryColor,
                      buttonText: AppStrings.login,
                      textColor: AppColors.textButtonColor,
                      onPressed: () {
                        submitLogin();
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      isLoginGoogle: false,
                      borderColor: AppColors.primaryColor,
                      background: Colors.white,
                      buttonText: AppStrings.register,
                      textColor: AppColors.primaryColor,
                      onPressed: () {
                        Navigator.of(context).pushNamed(RegisterScreen.id);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
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
