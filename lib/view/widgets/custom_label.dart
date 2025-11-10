import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String labelName;
  const CustomLabel({super.key, required this.labelName});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelName,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
