import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.sectionTitle});

  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      sectionTitle,
      style: AppTextStyles.font36BlueExtraBold(context).copyWith(
        letterSpacing: 1.5,
        wordSpacing: 2.5,
        color: AppColors.blueBlackColor,
      ),
    );
  }
}
