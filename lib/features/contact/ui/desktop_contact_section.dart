import 'package:flutter/material.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/contact/ui/contact_section_container.dart';
import 'package:mario_osama/features/contact/ui/widgets/desktop_contact_details_column.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_form_container.dart';

class DesktopContactSection extends StatelessWidget {
  const DesktopContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return ContactSectionContainer(
      paddingValue: screenWidth < 1400 ? 50 : 100,
      child: const Column(
        children: [
          SectionHeader(sectionTitle: 'Contact Me'),
          SizedBox(height: 80),
          Row(
            children: [
              Expanded(
                child: DesktopContactDetailsColumn(),
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
}
