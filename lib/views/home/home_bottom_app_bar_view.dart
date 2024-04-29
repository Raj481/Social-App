
import 'package:flutter/material.dart';
// import custom package
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';

class HomeBottomAppBarView extends StatelessWidget {
  const HomeBottomAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 65
      ),
      padding: const EdgeInsets.only(
          left: 15, right: 15,
          top: 15, bottom: 15
      ),
      decoration: BoxDecoration(
          color: ColorRes.secondaryBlack.withOpacity(.1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage(
                    ImageRes.icHomeWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage(
                    ImageRes.icChatBubbleWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage(
                    ImageRes.icAddWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage(
                    ImageRes.icSearchWhite
                ),
                height: 24,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage(
                    ImageRes.icSettingsWhite
                ),
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
