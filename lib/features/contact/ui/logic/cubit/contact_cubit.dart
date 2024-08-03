import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    return !regex.hasMatch(value) ? 'Enter a valid email address' : null;
  }

  Future<void> sendEmail() async {
    // final Uri emailUri = Uri(
    //   scheme: 'mailto',
    //   path: AppConstant.myEmail,
    //   queryParameters: {
    //     'subject': 'Message from ${nameController.text} from your website',
    //     'body': messageController.text,
    //   },
    // );

    // if (await canLaunchUrl(emailUri)) {
    //   await launchUrl(emailUri);
    // } else {
    //   throw 'Could not launch $emailUri';
    // }
  }
}
