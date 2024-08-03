import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/features/brief/ui/tablet_brief_section.dart';
import 'package:mario_osama/features/contact/ui/contact_section.dart';
import 'package:mario_osama/features/contact/ui/logic/cubit/contact_cubit.dart';
import 'package:mario_osama/features/home/ui/mobile_home_section.dart';
import 'package:mario_osama/features/projects/ui/projects_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MobileHomeSection(),
        const SizedBox(height: 200),
        const BriefSection(),
        const SizedBox(height: 100),
        const ProjectsSection(),
        const SizedBox(height: 100),
        BlocProvider<ContactCubit>(
          create: (context) => ContactCubit(),
          child: const ContactSection(),
        ),
      ],
    );
  }
}
