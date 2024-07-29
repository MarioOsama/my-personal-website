import 'package:flutter/material.dart';
import 'package:mario_osama/features/home/ui/widgets/social_action_item.dart';

class MainSocialActionsRow extends StatelessWidget {
  const MainSocialActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialActionItem(title: 'GitHub', icon: 'assets/images/svg/github.svg'),
        SizedBox(width: 60),
        SocialActionItem(
            title: 'LinkeIn', icon: 'assets/images/svg/linkedin.svg'),
        SizedBox(width: 60),
        SocialActionItem(title: 'Gmail', icon: 'assets/images/svg/gmail.svg'),
      ],
    );
  }
}
