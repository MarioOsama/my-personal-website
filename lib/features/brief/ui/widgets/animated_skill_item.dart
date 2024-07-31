import 'package:flutter/material.dart';
import 'package:mario_osama/features/brief/ui/widgets/skill_item.dart';

class AnimatedSkillItem extends StatefulWidget {
  const AnimatedSkillItem(
      {super.key, required this.skillName, required this.imagePath});

  final String imagePath;
  final String skillName;

  @override
  State<AnimatedSkillItem> createState() => _AnimatedSkillItemState();
}

class _AnimatedSkillItemState extends State<AnimatedSkillItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MouseCursor.defer,
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      child: AnimatedScale(
          duration: const Duration(milliseconds: 300),
          scale: _isHovered ? 1.15 : 1,
          child: SkillItem(
            skillName: widget.skillName,
            imagePath: widget.imagePath,
          )),
    );
  }
}
