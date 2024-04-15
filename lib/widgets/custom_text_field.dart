

import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController? controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputDecoration? inputDecoration;
  final BoxDecoration? boxDecoration;
  const CustomTextField({
    super.key,
    this.controller,
    this.inputDecoration,
    this.boxDecoration,
    this.hintText,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 25
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        decoration: boxDecoration ?? BoxDecoration(
          color: ColorRes.brownMedium.withOpacity(.3),
          borderRadius: BorderRadius.circular(15)
        ),
        child: TextField(
          controller: controller ?? TextEditingController(),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText ?? "",
            hintStyle: hintStyle ?? TextStyle(
              color: ColorRes.greyMedium,
              fontSize: 14
            )
          ),
        ),
      ),
    );
  }
}
