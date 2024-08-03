import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/core/cubit/scrolling_cubit.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class HeaderActionItem extends StatelessWidget {
  const HeaderActionItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$title Tapped');
        context.read<ScrollingCubit>().scrollToTargetedSection(context, title);
      },
      child: Text(
        title,
        style: AppTextStyles.font18BlueBlackSemiBold(context),
      ),
    );
  }
}
