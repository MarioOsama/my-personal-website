import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/home/ui/widgets/header_action_item.dart';

class LandingScreenHeader extends StatelessWidget {
  const LandingScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Mario Osama',
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
