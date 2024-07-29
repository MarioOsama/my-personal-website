import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/core/utils/app_string.dart';
import 'package:mario_osama/features/home/ui/widgets/actions_menu_button.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class MobileHomeSection extends StatelessWidget {
  const MobileHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppString.myName,
                style: AppTextStyles.font32BlueBold,
              ),
              const ActionsMenuButton()
            ],
          ),
        ),
        const SizedBox(height: 120),
        const MainBrief(),
        const SizedBox(height: 60),
        const MainSocialActionsRow(),
        const SizedBox(height: 60),
        const ScrollAnimation(),
      ],
    );
  }
}
