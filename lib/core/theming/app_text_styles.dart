import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class AppTextStyles {
  static TextStyle get font48BlackBold => const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle get font32BlueBold => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.blueColor,
        fontFamily: 'Outfit',
      );
  static TextStyle get font18BlackRegular => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.greyColor,
      );
  static TextStyle get font14GreyBold => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.greyColor,
      );
  static TextStyle get font16GreyBold => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.greyColor,
      );
  static TextStyle get font14BlackRegular => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );
  static TextStyle get font12BlackRegular => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );
}
