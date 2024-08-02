import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.maxLines = 1,
  });
  final String title;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _buildInputDecoration(context),
      maxLines: maxLines,
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
}
