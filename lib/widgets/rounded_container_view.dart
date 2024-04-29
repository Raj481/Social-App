

import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';

class RoundedContainerView extends StatelessWidget {

  final Widget? child ;
  final EdgeInsets? padding ;
  final EdgeInsets? margin ;
  final BoxDecoration? boxDecoration ;
  const RoundedContainerView({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.boxDecoration
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 8
      ),
      constraints: const BoxConstraints(
        minWidth: 200
      ),
      margin: margin ?? EdgeInsets.zero,
      decoration: boxDecoration ??  BoxDecoration(
          color: ColorRes.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: child,
    );
  }
}
