import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mario_osama/core/utils/size_config.dart';

class ScrollingCubit extends Cubit<ScrollController> {
  ScrollingCubit() : super(ScrollController());

  void setupListener() {
    state.addListener(() {
      log('ScrollingCubit: ${state.offset}');
    });
  }

  void scrollToTargetedSection(BuildContext context, String title) {
    final double width = MediaQuery.of(context).size.width;

    switch (title) {
      case 'Home':
        scrollToHome(width);
        break;
      case 'Brief':
        scrollToBrief(width);
        break;
      case 'Projects':
        scrollToProjects(width);
        break;
      case 'Contact':
        scrollToContact(width);
        break;
      default:
        scrollToHome(width);
    }
  }

  void scrollToHome(width) {
    state.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToBrief(width) {
    state.animateTo(
      width < SizeConfig.tablet ? 740 : 710,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToProjects(width) {
    state.animateTo(
      width < SizeConfig.tablet ? 1750 : 1500,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToContact(width) {
    state.animateTo(
      width < SizeConfig.tablet ? 5130 : 4870,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
