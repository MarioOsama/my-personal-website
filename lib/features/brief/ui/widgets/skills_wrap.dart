import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/brief/ui/widgets/skill_item.dart';

class SkillsWrap extends StatelessWidget {
  const SkillsWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 20,
      children: _getSkillItemsList(),
    );
  }

  _getSkillItemsList() {
    final int length = AppConstant.skillsMap.keys.length;
    return List.generate(
      length,
      (index) => SkillItem(
        skillName: AppConstant.skillsMap.keys.elementAt(index),
        imagePath: AppConstant.skillsMap.values.elementAt(index),
      ),
    );
  }
}
