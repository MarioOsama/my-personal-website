import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/core/utils/app_string.dart';
import 'package:mario_osama/core/utils/size_config.dart';
import 'package:mario_osama/core/widgets/header_action_item.dart';
import 'package:mario_osama/features/home/ui/widgets/actions_menu_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AppBar(
      toolbarHeight: width < SizeConfig.tablet ? 60 : 80,
      titleSpacing: 50,
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: AppColors.blueBlackColor,
      title: Text(
        AppString.myName,
        style: AppTextStyles.font32BlueBold(context),
      ),
      actions: _getActionItemsList(context, width),
    );
  }

  List<Widget> _getActionItemsList(BuildContext context, double width) {
    if (width < SizeConfig.mobileMenuItemsBreakpoint) {
      return [
        const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: ActionsMenuButton(),
        )
      ];
    }

    const List<String> titles = AppConstant.actionBarTitlesList;
    return titles.map(
      (title) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width < 1200 ? width * 0.05 : 80),
          child: HeaderActionItem(title: title),
        );
      },
    ).toList();
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
