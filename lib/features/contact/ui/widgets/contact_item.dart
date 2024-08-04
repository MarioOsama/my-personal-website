import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ContactItem extends StatelessWidget {
  const ContactItem(
      {super.key,
      required this.title,
      required this.iconPath,
      this.horizontalAlignment});

  final String title;
  final String iconPath;
  final MainAxisAlignment? horizontalAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: horizontalAlignment ?? MainAxisAlignment.start,
      children: [
        SvgPicture.asset(iconPath, width: 30, height: 30),
        const SizedBox(width: 20),
        SelectableText(
          title,
          style: AppTextStyles.font20BlueBlackSemiBold(context).copyWith(
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
