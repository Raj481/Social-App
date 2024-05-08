
import 'package:flutter/material.dart';
class ColorRes {
  ColorRes._();
  static ColorRes instance =  ColorRes._();
  static bool isDarkMode = false;
  static ColorRes of(BuildContext context){
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return instance;
  }
  static Color get transparent => Colors.transparent;
  static Color get black => const Color(0xFF000000);
  static Color get primaryBlack => const Color(0xFF262626);
  static Color get secondaryBlack => const Color(0xFF595959);
  static Color get white => const Color(0xFFffffff);
  static Color get whiteSecondary => const Color(0xFFEDEADE);
  static Color get whiteMedium => const Color(0x9bffffff);
  static Color get pearl => const Color(0xFFE2DFD2);
  static Color get redMedium => const Color(0xFFe60000);
  static Color get redLight => const Color(0xFFff4d4d);
  static Color get redDark => const Color(0xFF4d0000);
  static Color get greyLight => const Color(0xFFbfbfbf);
  static Color get greyMedium => const Color(0xFF737373);

  //////
  static Color get beige => const Color(0xFFE4E6C3);
  static Color get babyPowder => const Color(0xFFF7F7F2);
  static Color get smokyBlack => const Color(0xFF14110F);
  static Color get jet => const Color(0xFF34312D);
  static Color get almond => const Color(0xFFF2E2D2);
  static Color get ashGrey => const Color(0xFFBCC1BA);

}