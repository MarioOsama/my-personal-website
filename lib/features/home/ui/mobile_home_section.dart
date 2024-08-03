import 'package:flutter/material.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class MobileHomeSection extends StatelessWidget {
  const MobileHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 80),
        MainBrief(
          padding: EdgeInsets.symmetric(horizontal: 40),
        ),
        SizedBox(height: 60),
        MainSocialActionsRow(),
        SizedBox(height: 60),
        ScrollAnimation(),
      ],
    );
  }
}
