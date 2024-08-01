import 'package:flutter/material.dart';
import 'package:mario_osama/features/contact/ui/widgets/custom_text_form_field.dart';
import 'package:mario_osama/features/contact/ui/widgets/send_button.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(
            title: 'Name',
          ),
          const SizedBox(height: 30),
          const CustomTextFormField(title: 'Email'),
          const SizedBox(height: 30),
          const CustomTextFormField(title: 'Message', maxLines: 5),
          const SizedBox(height: 30),
          SendButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
