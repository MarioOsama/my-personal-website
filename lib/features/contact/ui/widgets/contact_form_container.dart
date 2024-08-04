import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_form.dart';

class ContactFormContainer extends StatelessWidget {
  const ContactFormContainer({super.key, this.backgroundColor});

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: _buildBoxDecoration(width),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.075, vertical: 40),
        child: const ContactForm(),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration(double width) {
    return BoxDecoration(
      color: AppColors.blueBlackColor.withOpacity(0.05),
      borderRadius: BorderRadius.circular(20),
      boxShadow: window.navigator.userAgent.contains('Mobile') ||
              window.navigator.userAgent.contains('Tablet')
          ? null
          : [
              BoxShadow(
                color: AppColors.blackColor.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 20,
                blurStyle: BlurStyle.outer,
                offset: const Offset(0, 0),
              ),
            ],
    );
  }
}
