import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/features/contact/ui/logic/cubit/contact_cubit.dart';
import 'package:mario_osama/features/contact/ui/widgets/custom_text_form_field.dart';
import 'package:mario_osama/features/contact/ui/widgets/send_button.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactCubit contactCubit = context.read<ContactCubit>();

    return Form(
      key: contactCubit.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            title: 'Name',
            controller: contactCubit.nameController,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            title: 'Email',
            controller: contactCubit.emailController,
            validator: contactCubit.validateEmail,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            title: 'Message',
            minLines: 1,
            maxLines: 10,
            controller: contactCubit.messageController,
          ),
          const SizedBox(height: 30),
          SendButton(
            onPressed: () {
              if (contactCubit.formKey.currentState!.validate()) {
                contactCubit.sendEmail();
              }
            },
          ),
        ],
      ),
    );
  }
}
