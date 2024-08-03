import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/core/utils/app_string.dart';
import 'package:mario_osama/features/home/ui/widgets/actions_menu_button.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.myName,
          style: AppTextStyles.font32BlueBold(context),
        ),
        const ActionsMenuButton()
      ],
    );
  }
}
