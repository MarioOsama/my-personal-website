import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/features/contact/ui/widgets/contacts_column.dart';

class ContactDetailsColumn extends StatelessWidget {
  const ContactDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Let\'s Connect', style: AppTextStyles.font28BlueExtraBold),
        const SizedBox(height: 20),
        Text(
          AppConstant.contactMessage,
          style: AppTextStyles.font16GreyRegular.copyWith(
            height: 1.5,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 20),
        const ContactsColumn(),
      ],
    );
  }
}
