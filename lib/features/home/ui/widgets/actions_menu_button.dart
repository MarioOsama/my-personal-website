import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ActionsMenuButton extends StatelessWidget {
  const ActionsMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      constraints: const BoxConstraints.expand(height: 200),
      elevation: 0,
      color: AppColors.whiteColor,
      icon: const Icon(
        Icons.menu_rounded,
      ),
      iconSize: 30,
      iconColor: AppColors.greyColor,
      onSelected: (value) {
        // your logic
      },
      itemBuilder: (BuildContext ctx) {
        return _getPopupItemsList(ctx);
      },
    );
  }

  List<PopupMenuItem<String>> _getPopupItemsList(BuildContext context) {
    const List<String> titles = AppConstant.actionBarTitlesList;
    return titles.map(
      (title) {
        return PopupMenuItem(
          value: title,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: AppTextStyles.font16BlueBlackRegular(context),
            ),
          ),
        );
      },
    ).toList();
  }
}
