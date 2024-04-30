
import 'package:flutter/material.dart';
import '../utils/color_res.dart';

class CustomAppBarView extends StatelessWidget {

  final Widget title;
  final Widget? leading;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;
  const CustomAppBarView({
    super.key,
    required this.title,
    this.decoration,
    this.padding,
    this.leading
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.only(
          left: 18, right: 18,
          top: 45, bottom: 15
      ),
      decoration: decoration ?? BoxDecoration(
          color: ColorRes.secondaryBlack.withOpacity(.1)
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(leading != null)
            ...[
              leading!,
              const SizedBox(width: 10,)
            ],
          title,
        ],
      ),
    );
  }
}
