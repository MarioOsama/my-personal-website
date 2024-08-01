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
      decoration: _buildInputDecoration(),
      maxLines: maxLines,
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      labelStyle: _getTextStyle,
      filled: true,
      fillColor: AppColors.blueBlackColor.withOpacity(0.05),
      border: const OutlineInputBorder(),
      enabledBorder: _buildBorder(),
      labelText: title,
    );
  }

  get _getTextStyle => AppTextStyles.font18BlueBlackBold
      .copyWith(color: AppColors.blueBlackColor.withOpacity(0.75));

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.blackColor.withOpacity(0.1)),
    );
  }
}
