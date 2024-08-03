import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/features/brief/ui/desktop_brief_section.dart';
import 'package:mario_osama/features/contact/ui/desktop_contact_section.dart';
import 'package:mario_osama/features/contact/ui/logic/cubit/contact_cubit.dart';
import 'package:mario_osama/features/home/ui/desktop_home_section.dart';
import 'package:mario_osama/features/projects/ui/desktop_projects_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        const DesktopHomeSection(),
        SizedBox(height: height * 0.3),
        const DesktopBriefSection(),
        SizedBox(height: height * 0.15),
        const DesktopProjectsSection(),
        SizedBox(height: height * 0.15),
        BlocProvider<ContactCubit>(
          create: (context) => ContactCubit(),
          child: const DesktopContactSection(),
        ),
      ],
    );
  }
}
