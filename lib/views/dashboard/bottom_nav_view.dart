
import 'package:flutter/material.dart';
// import custom package
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';

class BottomNavView extends StatefulWidget {
  
  final Function(int value) onTap;
  const BottomNavView({
    super.key, 
    required this.onTap
  });

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  final List<Widget> _childs = [
    Image(
      image: AssetImage(
          ImageRes.icHomeWhite
      ),
      height: 24,
    ),
    Image(
      image: AssetImage(
          ImageRes.icChatBubbleWhite
      ),
      height: 24,
    ),
    Image(
      image: AssetImage(
          ImageRes.icAddWhite
      ),
      height: 24,
    ),
    Image(
      image: AssetImage(
          ImageRes.icSearchWhite
      ),
      height: 24,
    ),
    Image(
      image: AssetImage(
          ImageRes.icSettingsWhite
      ),
      height: 24,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 65
      ),
      padding: const EdgeInsets.only(
          left: 15, right: 15,
          top: 10, bottom: 10
      ),
      decoration: BoxDecoration(
          color: ColorRes.secondaryBlack.withOpacity(.1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _childs.map((e) => InkWell(
          onTap: () => widget.onTap(_childs.indexOf(e)),
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: e,
          ),
        )
        ).toList(),
      ),
    );
  }
}
