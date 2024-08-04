import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/brief/ui/widgets/about_text.dart';
import 'package:mario_osama/features/brief/ui/widgets/tablet_skills_container.dart';

class MobileBriefSection extends StatelessWidget {
  const MobileBriefSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: _buildDecoration(),
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          const SectionHeader(sectionTitle: 'About Me'),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.85,
            child: const AboutText(),
          ),
          const SizedBox(height: 60),
          const SkillsContainer(),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: AppColors.greyColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20),
    );
  }
}
