import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class AppTextStyles {
  static TextStyle get font48BlueBlackBold => const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle get font36BlueExtraBold => const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: AppColors.blueColor,
        fontFamily: 'Outfit',
      );
  static TextStyle get font32BlueBold => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.blueColor,
        fontFamily: 'Outfit',
      );
  static TextStyle get font18BlueBlackSemiBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.blueBlackColor,
      );
  static TextStyle get font18GreySemiBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.greyColor,
      );
  static TextStyle get font18BlackBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      );
  static TextStyle get font18BlackRegular => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: AppColors.blackColor,
      );
  static TextStyle get font18GreyRegular => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: AppColors.greyColor,
      );
  static TextStyle get font14GreyBold => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.greyColor,
      );
  static TextStyle get font16BlueBlackBold => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.blueBlackColor,
      );
  static TextStyle get font16GreyRegular => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
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
