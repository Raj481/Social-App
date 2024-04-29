

import 'package:flutter/material.dart';

import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.chat.toUpperCase(),
              style: TextStyle(
                  fontFamily: FontRes.ralewaySemiBold,
                  color: ColorRes.white,
                  fontSize: 18
              ),
            ),
          )
        ],
      ),
    );
  }
}