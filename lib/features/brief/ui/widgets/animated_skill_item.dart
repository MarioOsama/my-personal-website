import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

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
        child: Container(
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
            )),
      ),
    );
  }

  FittedBox _buildSkillName() {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(widget.skillName,
          style: AppTextStyles.font16GreyRegular
              .copyWith(color: AppColors.whiteColor)),
    );
  }

  Image _buildSkillImage() {
    return Image.asset(
      widget.imagePath,
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
