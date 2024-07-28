import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ActionsMenuButton extends StatelessWidget {
  const ActionsMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      constraints: const BoxConstraints.expand(height: 150),
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
        return [
          PopupMenuItem(
            value: '/home',
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Home",
                  style: AppTextStyles.font16GreyBold,
                )),
          ),
          PopupMenuItem(
            value: '/about',
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "About",
                  style: AppTextStyles.font16GreyBold,
                )),
          ),
          PopupMenuItem(
            value: '/protfolio',
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Protfolio",
                  style: AppTextStyles.font16GreyBold,
                )),
          )
        ];
      },
    );
  }
}
