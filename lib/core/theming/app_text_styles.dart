import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/utils/size_config.dart';

class AppTextStyles {
  static TextStyle font48BlueBlackBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 48),
        fontWeight: FontWeight.bold,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font36BlueExtraBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 36),
        fontWeight: FontWeight.w800,
        color: AppColors.blueColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font32BlueBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 32),
        fontWeight: FontWeight.bold,
        color: AppColors.blueColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font28BlueExtraBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 28),
        fontWeight: FontWeight.w800,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font24BlueBlackExtraBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w800,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font20BlueBlackSemiBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font18BlueBlackBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w700,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font18BlueBlackSemiBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font16WhiteMedium(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
        color: AppColors.whiteColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font16BlueBlackRegular(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.normal,
        color: AppColors.blueBlackColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font16GreyRegular(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.normal,
        color: AppColors.greyColor,
        fontFamily: 'Outfit',
      );
  static TextStyle font14GreyBold(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.bold,
        color: AppColors.greyColor,
        fontFamily: 'Outfit',
      );
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .9;
  double upperLimit = fontSize * 1.1;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 960;
  } else {
    return width / 1440;
  }
}
