import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class SocialActionItem extends StatefulWidget {
  const SocialActionItem({super.key, required this.title, required this.icon});

  final String title;
  final String icon;

  @override
  State<SocialActionItem> createState() => _SocialActionItemState();
}

class _SocialActionItemState extends State<SocialActionItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(5),
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
      decoration: BoxDecoration(
        border: Border.all(
          color: isHovered ? AppColors.greyColor : Colors.white,
        ),
        borderRadius: BorderRadius.circular(10),
        color: isHovered ? AppColors.lightGreyColor : Colors.white,
      ),
      child: InkWell(
        enableFeedback: false,
        onTap: () {
          log('${widget.title} clicked');
        },
        onHover: (hover) {
          setState(() => isHovered = hover);
        },
        child: SvgPicture.asset(
          widget.icon,
          height: 40,
        ),
      ),
    );
  }
}
