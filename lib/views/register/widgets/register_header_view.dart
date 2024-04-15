
import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/image_res.dart';
import 'package:socialapp/utils/string_res.dart';

class RegisterHeaderView extends StatelessWidget {
  final double? logoHeight;
  final TextStyle? textStyle;
  const RegisterHeaderView({
    super.key,
    this.logoHeight,
    this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: logoHeight ?? 100,
                image: AssetImage(ImageRes.logoSymbol),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringRes.register.toUpperCase(),
                style: textStyle ?? TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorRes.white
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
