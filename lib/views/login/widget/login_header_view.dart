
import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/image_res.dart';
import 'package:socialapp/utils/string_res.dart';

class LoginHeaderView extends StatelessWidget {
  final double? logoHeight;
  final TextStyle? textStyle;
  const LoginHeaderView({
    super.key,
    this.logoHeight,
    this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: logoHeight ?? 200,
              image: AssetImage(ImageRes.logoSymbol),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringRes.login.toUpperCase(),
              style: textStyle ?? TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorRes.white
              ),
            )
          ],
        ),
      ],
    );
  }
}
