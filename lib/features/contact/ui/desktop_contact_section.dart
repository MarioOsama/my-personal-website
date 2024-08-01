import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_details_column.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_form_container.dart';

class DesktopContactSection extends StatelessWidget {
  const DesktopContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: _buildDecoration(),
      padding: const EdgeInsets.all(100),
      child: const Column(
        children: [
          SectionHeader(sectionTitle: 'Contact Me'),
          SizedBox(height: 80),
          Row(
            children: [
              Expanded(
                child: ContactDetailsColumn(),
              ),
              SizedBox(width: 100),
              Expanded(
                flex: 2,
                child: ContactFormContainer(),
              ),
            ],
          ),
        ],
      ),
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
