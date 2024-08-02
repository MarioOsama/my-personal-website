import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
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
            style: AppTextStyles.font32BlueBold(context),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _getActionItemsList,
          ),
        ),
      ],
    );
  }

  List<Widget> get _getActionItemsList {
    const List<String> titles = AppConstant.actionBarTitlesList;
    return titles.map(
      (title) {
        return HeaderActionItem(title: title);
      },
    ).toList();
  }
}
