
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
  static Color get whiteMedium => const Color(0x9bffffff);
  static Color get redMedium => const Color(0xFFe60000);
  static Color get redLight => const Color(0xFFff4d4d);
  static Color get redDark => const Color(0xFF4d0000);
  static Color get greyLight => const Color(0xFFbfbfbf);
  static Color get greyMedium => const Color(0xFF737373);

}