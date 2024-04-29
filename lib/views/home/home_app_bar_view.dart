
import 'package:flutter/material.dart';
import 'package:socialapp/utils/image_res.dart';

// import custom package
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';

class HomeAppBarView extends StatelessWidget {
  const HomeAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15, right: 15,
        top: 45, bottom: 15
      ),
      decoration: BoxDecoration(
        color: ColorRes.secondaryBlack.withOpacity(.1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringRes.appName,
            style: TextStyle(
              fontFamily: FontRes.ralewaySemiBold,
              color: ColorRes.white,
              fontSize: 21
            ),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                  image: AssetImage(
                    ImageRes.icUserWhite
                  ),
                  height: 21,
              )
            ],
          )
        ],
      ),
    );
  }
}
