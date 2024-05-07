
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/theme_res.dart';
import 'theme_event.dart';
import 'theme_helper.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(ThemeRes.of().darkTheme) {
    //when app is started
    on<InitialThemeSetEvent>((event, emit) async {
      final bool hasDarkTheme = await isDark();
      if (hasDarkTheme) {
        emit(ThemeRes.of().darkTheme);
      } else {
        emit(ThemeRes.of().lightTheme);
      }
    });

    //while switch is clicked
    on<ThemeSwitchEvent>((event, emit) {
      final isDark = state == ThemeRes.of().darkTheme;
      emit(isDark ? ThemeRes.of().lightTheme : ThemeRes.of().darkTheme);
      setTheme(isDark);
    });
  }
}
