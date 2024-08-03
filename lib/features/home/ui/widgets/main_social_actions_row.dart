import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/home/ui/widgets/social_action_item.dart';

class MainSocialActionsRow extends StatelessWidget {
  const MainSocialActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildSocialActionItemsList,
    );
  }

  List<Widget> get _buildSocialActionItemsList {
    return List.generate(AppConstant.profileIconsMap.keys.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SocialActionItem(
          title: AppConstant.profileIconsMap.keys.elementAt(index),
          icon: AppConstant.profileIconsMap.values.elementAt(index)['icon']!,
          url: AppConstant.profileIconsMap.values.elementAt(index)['url']!,
        ),
      );
    });
  }
}
