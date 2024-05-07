

import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';

class ThemeRes {

  ThemeRes._();
  static ThemeRes of(){

    return ThemeRes._();
  }
  ThemeData get darkTheme => ThemeData(
    primaryColor: ColorRes.primaryBlack,
    textTheme: const TextTheme(),
    buttonTheme: const ButtonThemeData()
  );
  ThemeData get lightTheme => ThemeData(
      primaryColor: ColorRes.white,
      textTheme: const TextTheme(),
      buttonTheme: const ButtonThemeData()
  );

}