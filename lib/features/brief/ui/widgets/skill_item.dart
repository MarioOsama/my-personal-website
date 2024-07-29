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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 100,
        height: 100,
        alignment: Alignment.center,
        decoration: _buildDecoration(),
        child: Column(
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

  Image _buildSkillImage() {
    return Image.asset(
      imagePath,
      width: 50,
      height: 50,
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.purpleColor.withOpacity(0.75),
    );
  }
}
