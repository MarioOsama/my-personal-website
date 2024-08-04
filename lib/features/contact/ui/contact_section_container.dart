import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class ContactSectionContainer extends StatelessWidget {
  const ContactSectionContainer(
      {super.key,
      required this.child,
      required this.paddingValue,
      this.backgroundImagePath});

  final Widget child;
  final double paddingValue;
  final String? backgroundImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: _buildDecoration(),
      padding: EdgeInsets.all(paddingValue),
      child: child,
    );
  }

  DecorationImage _buildDecorationImage() {
    return DecorationImage(
      image: AssetImage(backgroundImagePath!),
      fit: BoxFit.cover,
      opacity: 0.05,
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      image: backgroundImagePath != null ? _buildDecorationImage() : null,
      gradient: backgroundImagePath != null ? _setGradient() : null,
      color: backgroundImagePath == null
          ? AppColors.greyColor.withOpacity(0.1)
          : null,
    );
  }

  LinearGradient _setGradient() {
    return const LinearGradient(
      colors: [
        AppColors.whiteColor,
        AppColors.lightestGreyColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
