import 'package:flutter/material.dart';
import 'package:mario_osama/features/brief/ui/widgets/skill_item.dart';

class AnimatedSkillItem extends StatelessWidget {
  AnimatedSkillItem(
      {super.key, required this.skillName, required this.imagePath});

  final String imagePath;
  final String skillName;
  final ValueNotifier<bool> _isHoveredNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MouseCursor.defer,
      onTap: () {},
      onHover: (value) {
        _isHoveredNotifier.value = value;
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _isHoveredNotifier,
        child: SkillItem(
          skillName: skillName,
          imagePath: imagePath,
        ),
        builder: (context, value, child) => AnimatedScale(
          duration: const Duration(milliseconds: 300),
          scale: value ? 1.15 : 1,
          child: child!,
        ),
      ),
    );
  }
}
