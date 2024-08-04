import 'package:flutter/material.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/contact/ui/contact_section_container.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_message.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_form_container.dart';
import 'package:mario_osama/features/contact/ui/widgets/contacts_column.dart';

class MobileContactSection extends StatelessWidget {
  const MobileContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContactSectionContainer(
      paddingValue: 25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SectionHeader(sectionTitle: 'Contact Me'),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ContactMessage(
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              ContactFormContainer(),
              SizedBox(height: 30),
              ContactsColumn(
                crossAlignment: CrossAxisAlignment.center,
              )
            ],
          ),
        ],
      ),
    );
  }
}
