import 'package:flutter/material.dart';
import 'package:mario_osama/home/ui/widgets/social_action_item.dart';

class MainSocialActionsColumn extends StatelessWidget {
  const MainSocialActionsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SocialActionItem(title: 'GitHub', icon: 'assets/images/svg/github.svg'),
        SizedBox(height: 60),
        SocialActionItem(
            title: 'LinkeIn', icon: 'assets/images/svg/linkedin.svg'),
        SizedBox(height: 60),
        SocialActionItem(title: 'Gmail', icon: 'assets/images/svg/gmail.svg'),
      ],
    );
  }
}
