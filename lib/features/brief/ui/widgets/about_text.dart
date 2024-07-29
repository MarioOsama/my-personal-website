import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/core/utils/app_string.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppString.aboutMessage,
      textAlign: TextAlign.justify,
      style: AppTextStyles.font16GreyRegular.copyWith(),
    );
  }
}
