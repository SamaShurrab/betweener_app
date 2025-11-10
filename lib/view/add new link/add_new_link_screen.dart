import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_strings.dart';
import 'package:betweener_app/view/widgets/custom_button.dart';
import 'package:betweener_app/view/widgets/custom_label.dart';
import 'package:betweener_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewLinkScreen extends StatefulWidget {
  static const id = "/AddNewLinkScreen";
  const AddNewLinkScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return AddNewLinkScreenState();
  }
}

class AddNewLinkScreenState extends State<AddNewLinkScreen> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static TextEditingController linkController = TextEditingController();
  static TextEditingController titleController = TextEditingController();
  @override
  void dispose() {
    linkController.dispose();
    titleController.dispose();
    super.dispose();
  }

  submitAddLink() {
    if (formKey.currentState!.validate()) {}
  }

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
                hint: AppStrings.titleHint,
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
                  onPressed: () {
                    submitAddLink();
                  },
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
