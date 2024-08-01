import 'package:flutter/material.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/features/home/ui/widgets/mobile_nav_bar.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class MobileHomeSection extends StatelessWidget {
  const MobileHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: MobileNavBar(),
        ),
        SizedBox(height: 120),
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
