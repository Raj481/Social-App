

import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/font_res.dart';

class ThemeRes {

  ThemeRes._();
  static ThemeRes of(){

    return ThemeRes._();
  }
  ThemeData get darkTheme => ThemeData(
    primaryColor: ColorRes.primaryBlack,
    secondaryHeaderColor: ColorRes.white,
    cardColor: ColorRes.greyMedium.withOpacity(.2),
    textTheme: TextTheme(
        displaySmall: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.white,
            fontSize: 14
        ),
        titleSmall: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.white,
            fontSize: 14
        ),
        displayLarge: TextStyle(
          fontFamily: FontRes.robotoRegular,
          color: ColorRes.white,
          fontSize: 18
      ),
        titleLarge: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.white,
            fontSize: 18
        ),
    ),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: ColorRes.primaryBlack,
        onPrimary: ColorRes.transparent,
        secondary: ColorRes.white.withOpacity(.3),
        onSecondary: ColorRes.transparent,
        error: ColorRes.transparent,
        onError: ColorRes.transparent,
        background: ColorRes.greyMedium.withOpacity(.1),
        onBackground: ColorRes.whiteMedium.withOpacity(.2),
        surface: ColorRes.transparent,
        onSurface: ColorRes.transparent
    ),
  );
  ThemeData get lightTheme => ThemeData(
      primaryColor: ColorRes.white,
    secondaryHeaderColor: ColorRes.primaryBlack,
      cardColor: ColorRes.white,
      textTheme: TextTheme(
        displaySmall: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.primaryBlack,
            fontSize: 14
        ),
        titleSmall: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.primaryBlack,
            fontSize: 14
        ),
        displayLarge: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.primaryBlack,
            fontSize: 18
        ),
        titleLarge: TextStyle(
            fontFamily: FontRes.robotoRegular,
            color: ColorRes.primaryBlack,
            fontSize: 18
        ),
      ),
      colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ColorRes.primaryBlack,
      onPrimary: ColorRes.transparent,
      secondary: ColorRes.primaryBlack.withOpacity(.3),
      onSecondary: ColorRes.transparent,
      error: ColorRes.transparent,
      onError: ColorRes.transparent,
      background: ColorRes.black.withOpacity(.08),
      onBackground: ColorRes.greyLight.withOpacity(.6),
      surface: ColorRes.transparent,
      onSurface: ColorRes.transparent
  ),
  );



}