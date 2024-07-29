import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/brief/ui/widgets/about_section.dart';
import 'package:mario_osama/features/brief/ui/widgets/desktop_skills_container.dart';

class DesktopBriefSection extends StatelessWidget {
  const DesktopBriefSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: _buildDecoration(),
      padding: const EdgeInsets.all(100),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(sectionTitle: 'About Me'),
          SizedBox(height: 20),
          AboutSection(),
          SizedBox(height: 80),
          DesktopSkillsContainer(),
        ],
      ),
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
}
