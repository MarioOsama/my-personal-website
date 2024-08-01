import 'package:flutter/material.dart';
import 'package:mario_osama/core/utils/size_config.dart';
import 'package:mario_osama/features/home/ui/widgets/home_section_header.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/features/home/ui/widgets/mobile_nav_bar.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class TabletHomeSection extends StatelessWidget {
  const TabletHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    const double menuBarBreakpoint = SizeConfig.mobileMenuItemsBreakpoint;
    final double width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: width < menuBarBreakpoint
              ? const MobileNavBar()
              : const HomeSectionHeader(),
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
