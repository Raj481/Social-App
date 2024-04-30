

import 'package:flutter/material.dart';

import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/chat_item_view.dart';
import '../../widgets/custom_appbar_view.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});
  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white.withOpacity(.03),
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
            decoration: BoxDecoration(
                color: ColorRes.primaryBlack
            ),
          ),
          Flexible(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) {
                    return InkWell(
                        onTap: (){},
                        child: const ChatItemView()
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
