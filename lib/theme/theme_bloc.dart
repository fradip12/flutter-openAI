import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            themeData: AppThemes.appThemeData[AppTheme.lightTheme]!,
            themeType: AppTheme.lightTheme,
          ),
        ) {
    on<ToDark>((event, emit) {
      emit(ThemeState(
          themeType: AppTheme.darkTheme,
          themeData: AppThemes.appThemeData[AppTheme.darkTheme]!));
    });
    on<ToLight>((event, emit) {
      emit(ThemeState(
          themeType: AppTheme.lightTheme,
          themeData: AppThemes.appThemeData[AppTheme.lightTheme]!));
    });
  }
}
