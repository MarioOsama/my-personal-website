import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.maxLines = 1,
    required this.controller,
    this.minLines,
    this.validator,
  });
  final String title;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ?? _validate,
      decoration: _buildInputDecoration(context),
      maxLines: maxLines,
      controller: controller,
      minLines: minLines,
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      labelStyle: _getTextStyle(context),
      filled: true,
      fillColor: AppColors.blueBlackColor.withOpacity(0.05),
      border: const OutlineInputBorder(),
      enabledBorder: _buildBorder(),
      labelText: title,
    );
  }

  _getTextStyle(BuildContext context) =>
      AppTextStyles.font18BlueBlackBold(context)
          .copyWith(color: AppColors.blueBlackColor.withOpacity(0.75));

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.blackColor.withOpacity(0.1)),
    );
  }

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your $title';
    }
    return null;
  }
}
