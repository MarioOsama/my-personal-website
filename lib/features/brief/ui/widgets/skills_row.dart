import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/brief/ui/widgets/animated_skill_item.dart';

class SkillsRow extends StatelessWidget {
  const SkillsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _getSkillItemsList(),
    );
  }

  _getSkillItemsList() {
    final int length = AppConstant.skillsMap.keys.length;
    return List.generate(
      length,
      (index) => AnimatedSkillItem(
        skillName: AppConstant.skillsMap.keys.elementAt(index),
        imagePath: AppConstant.skillsMap.values.elementAt(index),
      ),
    );
  }
}
