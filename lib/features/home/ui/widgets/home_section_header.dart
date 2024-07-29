import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/core/utils/app_string.dart';
import 'package:mario_osama/features/home/ui/widgets/header_action_item.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            AppString.myName,
            style: AppTextStyles.font32BlueBold,
          ),
        ),
        const Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HeaderActionItem(
                title: 'Home',
              ),
              HeaderActionItem(
                title: 'About',
              ),
              HeaderActionItem(
                title: 'Portfolio',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
