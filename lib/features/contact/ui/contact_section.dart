import 'package:flutter/material.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/contact/ui/contact_section_container.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_message.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_form_container.dart';
import 'package:mario_osama/features/contact/ui/widgets/contacts_column.dart';
import 'package:mario_osama/features/contact/ui/widgets/contacts_row.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return ContactSectionContainer(
      paddingValue: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SectionHeader(sectionTitle: 'Contact Me'),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ContactMessage(
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              const ContactFormContainer(),
              const SizedBox(height: 30),
              screenWidth < 850
                  ? const ContactsColumn(
                      crossAlignment: CrossAxisAlignment.center,
                    )
                  : const ContactsRow(),
            ],
          ),
        ],
      ),
    );
  }
}
