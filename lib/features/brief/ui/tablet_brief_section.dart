import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/brief/ui/widgets/about_text.dart';
import 'package:mario_osama/features/brief/ui/widgets/tablet_skills_container.dart';

class BriefSection extends StatelessWidget {
  const BriefSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: _buildDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        children: [
          const SectionHeader(sectionTitle: 'About Me'),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.75,
            child: const AboutText(),
          ),
          const SizedBox(height: 60),
          const SkillsContainer(),
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
