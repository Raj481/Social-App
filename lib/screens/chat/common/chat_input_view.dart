
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/theme/theme_bloc.dart';
/// import custom package
import '../../../utils/color_res.dart';
import '../../../utils/font_res.dart';
import '../../../utils/image_res.dart';
import '../../../utils/theme_res.dart';


class ChatInputView extends StatefulWidget {
  const ChatInputView({super.key});
  @override
  State<ChatInputView> createState() => _ChatInputViewState();
}

class _ChatInputViewState extends State<ChatInputView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
        builder: (_, themeState) {
          return Container(
            color: Theme.of(context).primaryColor,
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
                        color: Theme.of(context).searchViewTheme.backgroundColor,
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
                                  hintStyle: Theme.of(context).searchViewTheme.headerHintStyle,
                                  hintText: "Type Here"
                              ),
                              style: Theme.of(context).textTheme.titleMedium,
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
                    child: (themeState == ThemeRes.of().darkTheme )
                        ? Image(
                        height: 25,
                        image: AssetImage(
                          ImageRes.icSendWhite,
                        )
                    )
                        : Image(
                        height: 25,
                        image: AssetImage(
                          ImageRes.icSendBlack,
                        )
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

}

