
import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/image_res.dart';

class ChatInputView extends StatefulWidget {
  const ChatInputView({super.key});
  @override
  State<ChatInputView> createState() => _ChatInputViewState();
}

class _ChatInputViewState extends State<ChatInputView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorRes.primaryBlack,
      constraints: const BoxConstraints(
          minHeight: 65
      ),
      child: Row(
        children: [

          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                  height: 25,
                  image: AssetImage(
                    ImageRes.icSendWhite,
                  )
              ),
            ),
          )
        ],
      ),
    );
  }

}

