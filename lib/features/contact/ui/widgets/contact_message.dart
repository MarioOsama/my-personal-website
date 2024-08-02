import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ContactMessage extends StatelessWidget {
  const ContactMessage({super.key, required this.textAlign});

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      AppConstant.contactMessage,
      textAlign: textAlign,
      style: AppTextStyles.font16GreyRegular(context).copyWith(
        height: 1.5,
        letterSpacing: 1,
        fontWeight: FontWeight.w500,
        color: AppColors.blueBlackColor.withOpacity(0.75),
      ),
    );
  }
}
