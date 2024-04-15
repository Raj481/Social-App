
import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/image_res.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: ColorRes.brownLight,
      body: Center(
        child: Image(
          height: 150,
          image: AssetImage(ImageRes.logo),
        ),
      ),
    );
  }

}
