import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class HeaderActionItem extends StatelessWidget {
  const HeaderActionItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$title Tapped');
      },
      child: Text(
        title,
        style: AppTextStyles.font18BlackRegular,
      ),
    );
  }
}
