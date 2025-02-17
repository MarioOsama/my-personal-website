import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/features/brief/ui/tablet_brief_section.dart';
import 'package:mario_osama/features/contact/ui/tablet_contact_section.dart';
import 'package:mario_osama/features/contact/ui/logic/cubit/contact_cubit.dart';
import 'package:mario_osama/features/home/ui/tablet_home_section.dart';
import 'package:mario_osama/features/projects/ui/tablet_projects_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TabletHomeSection(),
        const SizedBox(height: 200),
        const TabletBriefSection(),
        const SizedBox(height: 100),
        const TabletProjectsSection(),
        const SizedBox(height: 100),
        BlocProvider<ContactCubit>(
          create: (context) => ContactCubit(),
          child: const TabletContactSection(),
        ),
      ],
    );
  }
}
