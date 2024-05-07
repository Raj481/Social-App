
import 'package:flutter/material.dart';
/// import custom package
import '../../../utils/color_res.dart';
import '../../../utils/font_res.dart';
import '../../../utils/image_res.dart';


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
      padding: const EdgeInsets.symmetric(
        horizontal: 15, vertical: 15
      ),
      constraints: const BoxConstraints(
          minHeight: 65
      ),
      child: Row(
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: ColorRes.white.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 10
              ),
              constraints: const BoxConstraints(
                  maxHeight: 120
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintStyle: TextStyle(
                              color: ColorRes.white.withOpacity(.5),
                              fontFamily: FontRes.robotoRegular,
                              fontSize: 16
                          ),
                          hintText: "Type Here"
                        ),
                        style: TextStyle(
                          color: ColorRes.white,
                          fontFamily: FontRes.robotoRegular,
                          fontSize: 16
                        ),
                        maxLines: null,
                      )
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 5,),
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

