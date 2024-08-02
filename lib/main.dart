import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/core/cubit/scrolling_cubit.dart';
import 'package:mario_osama/mario_osama.dart';

void main() {
  runApp(BlocProvider<ScrollingCubit>(
    create: (context) => ScrollingCubit()..setupListener(),
    child: const MarioOsama(),
  ));
}
