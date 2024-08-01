import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/contact/ui/widgets/contact_item.dart';

class ContactsColumn extends StatelessWidget {
  const ContactsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getContactItemsList,
    );
  }

  List<Widget> get _getContactItemsList {
    const Map<String, String> contactItems = AppConstant.contactsMap;
    return contactItems.entries.map((entry) {
      return ContactItem(title: entry.key, iconPath: entry.value);
    }).toList();
  }
}
