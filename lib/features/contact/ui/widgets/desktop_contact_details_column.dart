import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_message.dart';
import 'package:mario_osama/features/contact/ui/widgets/contacts_column.dart';

class DesktopContactDetailsColumn extends StatelessWidget {
  const DesktopContactDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Let\'s Connect',
            style: AppTextStyles.font28BlueExtraBold(context)),
        const SizedBox(height: 20),
        const ContactMessage(
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 20),
        const ContactsColumn(),
      ],
    );
  }
}
