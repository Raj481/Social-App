
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';
import 'common/chat_input_view.dart';

class ChatScreen extends StatefulWidget {

  final int index;
  final String name;
  const ChatScreen({super.key, required this.index, required this.name});
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
            title:  Hero(
              tag: "chat${widget.index}",
              child: Text(
                  widget.name.toUpperCase(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
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
