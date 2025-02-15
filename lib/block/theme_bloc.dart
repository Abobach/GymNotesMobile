import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymnote/block/theme_event.dart';
import 'package:gymnote/block/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(ThemeData.light())) {

    on<ToggleTheme>((event, emit) {
        final newTheme = state.themeData.brightness == Brightness.light
        ? ThemeData.dark()
        : ThemeData.light();
        emit(ThemeState(newTheme));
    });
  }
}




