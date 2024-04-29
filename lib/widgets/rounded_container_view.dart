

import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';

class RoundedContainerView extends StatelessWidget {

  final Widget? child ;
  final EdgeInsets? padding ;
  final EdgeInsets? margin ;
  final BoxDecoration? boxDecoration ;
  final BoxConstraints? constraints ;
  const RoundedContainerView({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.boxDecoration,
    this.constraints
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      constraints: constraints ?? const BoxConstraints(),
      margin: margin ?? EdgeInsets.zero,
      decoration: boxDecoration ?? BoxDecoration(
          color: ColorRes.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: child,
    );
  }
}
