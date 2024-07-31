import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ProjectToolItem extends StatelessWidget {
  const ProjectToolItem({super.key, required this.toolName});

  final String toolName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColors.blueBlackColor,
        ),
      ),
      child: Text(
        toolName,
        style: AppTextStyles.font16WhiteMedium
            .copyWith(color: AppColors.greyColor),
      ),
    );
  }
}
