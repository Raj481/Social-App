
import 'package:flutter/material.dart';
import 'package:socialapp/utils/font_res.dart';

import '../utils/color_res.dart';
import '../utils/string_res.dart';

class CustomAppBarView extends StatelessWidget {

  final Widget title;
  const CustomAppBarView({
    super.key,
    required this.title
  });

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
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
        ],
      ),
    );
  }
}
