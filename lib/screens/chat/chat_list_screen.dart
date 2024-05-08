
import 'package:flutter/material.dart';
/// import custom package
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.chat.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Flexible(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) {
                    return const ChatItemView();
                  }
              )
          )
        ],
      ),
    );
  }
}
