import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/core/utils/app_string.dart';

class MainBrief extends StatelessWidget {
  const MainBrief({
    super.key,
    this.padding,
  });

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image.asset(
        //   'assets/images/png/avatar.png',
        //   scale: 3,
        // ),
        // const SizedBox(height: 20),
        Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            AppString.welcomeMessage,
            textAlign: TextAlign.center,
            style: AppTextStyles.font48BlueBlackBold.copyWith(
              letterSpacing: 2,
              wordSpacing: 3,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            AppString.briefMessage,
            textAlign: TextAlign.center,
            style: AppTextStyles.font14GreyBold.copyWith(
              letterSpacing: 1,
              wordSpacing: 3,
            ),
          ),
        ),
      ],
    );
  }
}
