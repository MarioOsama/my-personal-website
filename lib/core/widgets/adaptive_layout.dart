import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mario_osama/core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('Width: ${constraints.maxWidth}');
        if (constraints.maxWidth < SizeConfig.tablet) {
          log('Mobile Layout');
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          log('Tablet Layout');
          return tabletLayout(context);
        } else {
          log('Desktop Layout');
          return desktopLayout(context);
        }
      },
    );
  }
}
