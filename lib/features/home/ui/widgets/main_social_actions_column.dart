import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/home/ui/widgets/social_action_item.dart';

class MainSocialActionsColumn extends StatelessWidget {
  const MainSocialActionsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildSocialActionItemsList,
    );
  }

  List<Widget> get _buildSocialActionItemsList {
    return List.generate(AppConstant.profileIconsMap.keys.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SocialActionItem(
          title: AppConstant.profileIconsMap.keys.elementAt(index),
          icon: AppConstant.profileIconsMap.values.elementAt(index)['icon']!,
          url: AppConstant.profileIconsMap.values.elementAt(index)['url']!,
        ),
      );
    });
  }
}
