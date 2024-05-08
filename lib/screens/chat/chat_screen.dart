
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';
import 'common/chat_input_view.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.chat.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).iconTheme.color,
                size: 14,
              ),
            ),
          ),
          Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.background,
              )
          ),
          const ChatInputView(),
        ],
      ),
    );
  }
}
