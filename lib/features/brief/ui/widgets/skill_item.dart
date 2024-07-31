import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class SkillItem extends StatelessWidget {
  const SkillItem(
      {super.key, required this.skillName, required this.imagePath});

  final String skillName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 15, top: 20),
        width: 100,
        height: 125,
        alignment: Alignment.center,
        decoration: _buildDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildSkillImage(),
            const Spacer(),
            _buildSkillName(),
          ],
        ));
  }

  FittedBox _buildSkillName() {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(skillName,
          style: AppTextStyles.font16GreyRegular
              .copyWith(color: AppColors.whiteColor)),
    );
  }

  _buildSkillImage() {
    return Container(
      width: 50,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.lightestGreyColor.withOpacity(0.25),
        ),
        color: AppColors.whiteColor.withOpacity(0.25),
      ),
      child: Image.asset(
        imagePath,
        width: 30,
        height: 30,
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: AppColors.lightestGreyColor,
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.blueBlackColor.withOpacity(0.2),
          offset: const Offset(0, 0),
          blurRadius: 10,
        ),
      ],
      color: AppColors.blueBlackColor.withOpacity(0.8),
    );
  }
}
