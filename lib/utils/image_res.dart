

import 'package:flutter/material.dart';

class ImageRes {
  ImageRes._();
  static bool isDarkMode = false;
  static ImageRes instance = ImageRes._();
  static ImageRes of(BuildContext context) {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return instance;
  }
  static String get image => "assets/images";
  static String get utils => "assets/images/utils";
  static String get icAddBlack => "$image/ic_add_black.png";
  static String get icAddWhite => "$image/ic_add_white.png";
  static String get icAddImageBlack => "$image/ic_add_image_black.png";
  static String get icAddImageWhite => "$image/ic_add_image_white.png";
  static String get icAddUserBlack => "$image/ic_add_user_black.png";
  static String get icAddUserWhite => "$image/ic_add_user_white.png";
  static String get icChatBubbleBlack => "$image/ic_chat_bubble_black.png";
  static String get icChatBubbleWhite => "$image/ic_chat_bubble_white.png";
  static String get icCheckMarkBlack => "$image/ic_check_mark_black.png";
  static String get icCheckMarkWhite => "$image/ic_check_mark_white.png";
  static String get icHomeBlack => "$image/ic_home_black.png";
  static String get icHomeWhite => "$image/ic_home_white.png";
  static String get icInfoBlack => "$image/ic_info_black.png";
  static String get icInfoWhite => "$image/ic_info_white.png";
  static String get icPhotoPlaceholderBlack => "$image/ic_photo_placeholder_black.png";
  static String get icSearchBlack => "$image/ic_search_black.png";
  static String get icSearchWhite => "$image/ic_search_white.png";
  static String get icSettingsBlack => "$image/ic_settings_black.png";
  static String get icSettingsWhite => "$image/ic_settings_white.png";

  String get icSettingsSelected => isDarkMode
      ? "$image/ic_settings_black.png" : "$image/ic_settings_white.png";
  static String get icUserWhite => "$image/ic_user_white.png";
  static String get icUserBlack => "$image/ic_user_black.png";
  static String get icSendBlack => "$image/ic_send_black.png";
  static String get icSendWhite => "$image/ic_send_white.png";
  static String get icCommentBlack => "$image/ic_comment_black.png";
  static String get icCommentWhite => "$image/ic_comment_white.png";

  /*--- utils ---*/
  static String get bg3 => "$utils/bg_3.jpg";

}