import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class MainBrief extends StatelessWidget {
  const MainBrief({
    super.key,
  });

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
        Text(
          "HEY, I'M MARIO OSAMA",
          style: AppTextStyles.font48BlackBold.copyWith(
            letterSpacing: 2,
            wordSpacing: 3,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "A mobile app developer designing and building \nbeautiful and functional mobile apps for Android & iOS",
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
