import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.title, required this.iconPath});

  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      leading: SvgPicture.asset(iconPath, width: 30, height: 30),
      title: SelectableText(
        title,
        style: AppTextStyles.font20BlueBlackSemiBold.copyWith(
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
