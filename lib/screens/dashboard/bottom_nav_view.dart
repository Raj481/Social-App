
import 'package:flutter/material.dart';
// import custom package
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';

class BottomNavView extends StatefulWidget {
  
  final int currentIndex;
  final Function(int value) onTap;
  const BottomNavView({
    super.key, 
    required this.onTap,
    this.currentIndex = 0
  });

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {

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
        children: [
          InkWell(
            onTap: () => widget.onTap(0),
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                color: (widget.currentIndex == 0) ? ColorRes.white : ColorRes.transparent,
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(12.0),
              child: (widget.currentIndex == 0)
                  ? Image(
                image: AssetImage(
                    ImageRes.icHomeBlack
                ),
                height: 24,
              )
                  : Image(
                    image: AssetImage(
                      ImageRes.icHomeWhite
                    ),
                    height: 24,
                  ),
            ),
          ),
          InkWell(
            onTap: () => widget.onTap(1),
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                  color: (widget.currentIndex == 1) ? ColorRes.white : ColorRes.transparent,
                  borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(12.0),
              child:  (widget.currentIndex == 1)
                  ? Image(
                image: AssetImage(
                    ImageRes.icChatBubbleBlack
                ),
                height: 24,
              )
                  : Image(
                image: AssetImage(
                    ImageRes.icChatBubbleWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: () => widget.onTap(2),
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                  color: (widget.currentIndex == 2) ? ColorRes.white : ColorRes.transparent,
                  borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(12.0),
              child: (widget.currentIndex == 2)
                  ? Image(
                image: AssetImage(
                    ImageRes.icAddBlack
                ),
                height: 24,
              )
                  : Image(
                image: AssetImage(
                    ImageRes.icAddWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: () => widget.onTap(3),
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                  color: (widget.currentIndex == 3) ? ColorRes.white : ColorRes.transparent,
                  borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(12.0),
              child: (widget.currentIndex == 3)
                  ? Image(
                image: AssetImage(
                    ImageRes.icSearchBlack
                ),
                height: 24,
              )
                  : Image(
                image: AssetImage(
                    ImageRes.icSearchWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: () => widget.onTap(4),
            borderRadius: BorderRadius.circular(15),
            child: Container(
                decoration: BoxDecoration(
                    color: (widget.currentIndex == 4) ? ColorRes.white : ColorRes.transparent,
                    borderRadius: BorderRadius.circular(10)
                ),
              padding: const EdgeInsets.all(12.0),
                child: (widget.currentIndex == 4)
                    ? Image(
                image: AssetImage(
                    ImageRes.icSettingsBlack
                ),
                height: 24,
              )
                    : Image(
                image: AssetImage(
                    ImageRes.icSettingsWhite
                ),
                height: 24,
              )
            ),
          ),
        ],
      ),
    );
  }


}
