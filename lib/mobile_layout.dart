import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/features/brief/ui/mobile_brief_section.dart';
import 'package:mario_osama/features/contact/ui/mobile_contact_section.dart';
import 'package:mario_osama/features/contact/ui/logic/cubit/contact_cubit.dart';
import 'package:mario_osama/features/home/ui/mobile_home_section.dart';
import 'package:mario_osama/features/projects/ui/mobile_projects_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const MobileHomeSection(),
        SizedBox(height: height * 0.25),
        const MobileBriefSection(),
        SizedBox(height: height * 0.1),
        const MobileProjectsSection(),
        SizedBox(height: height * 0.1),
        BlocProvider<ContactCubit>(
          create: (context) => ContactCubit(),
          child: const MobileContactSection(),
        ),
      ],
    );
  }
}
