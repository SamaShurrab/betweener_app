import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/widgets/custom_button.dart';
import 'package:betweener_app/view/widgets/custom_label.dart';
import 'package:betweener_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditLinkScreen extends StatefulWidget {
  static const id = "/EditLinkScreen";
  const EditLinkScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return EditLinkScreenState();
  }
}

class EditLinkScreenState extends State<EditLinkScreen> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController linkController = TextEditingController();
  static TextEditingController titleController = TextEditingController();
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
          AppStrings.edit,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.heightOf(context) * (10 / 100)),
              CustomLabel(labelName: AppStrings.title),
              const SizedBox(height: 10),
              CustomTextFormField(
                labelName: AppStrings.title,
                controller: titleController,
                hint: "",
                keyboardType: TextInputType.text,
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
              CustomLabel(labelName: AppStrings.link),
              const SizedBox(height: 10),
              CustomTextFormField(
                labelName: AppStrings.link,
                controller: linkController,
                hint: "",
                keyboardType: TextInputType.url,
                obscureText: false,
                textInputAction: TextInputAction.done,
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
      ),
    );
  }
}
