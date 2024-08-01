import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class SocialActionItem extends StatelessWidget {
  SocialActionItem({super.key, required this.title, required this.icon});

  final String title;
  final String icon;
  final ValueNotifier<bool> _isHoveredNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        log('$title clicked');
      },
      onHover: (hover) {
        _isHoveredNotifier.value = hover;
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _isHoveredNotifier,
        child: _buildChild(),
        builder: (context, value, child) => AnimatedContainer(
          padding: const EdgeInsets.all(5),
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
          decoration: _buildDecoration(value),
          child: child!,
        ),
      ),
    );
  }

  SvgPicture _buildChild() {
    return SvgPicture.asset(
      icon,
      height: 40,
    );
  }

  BoxDecoration _buildDecoration(bool isHovered) {
    return BoxDecoration(
      border: Border.all(
        color: isHovered ? AppColors.greyColor : Colors.white,
      ),
      borderRadius: BorderRadius.circular(10),
      color: isHovered ? AppColors.lightGreyColor : Colors.white,
    );
  }
}
