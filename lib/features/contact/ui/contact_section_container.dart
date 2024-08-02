import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class ContactSectionContainer extends StatelessWidget {
  const ContactSectionContainer(
      {super.key, required this.child, required this.paddingValue});

  final Widget child;
  final double paddingValue;

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
    return const DecorationImage(
      image: AssetImage('assets/images/png/bg.png'),
      fit: BoxFit.cover,
      opacity: 0.05,
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      image: _buildDecorationImage(),
      gradient: _setGradient(),
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
