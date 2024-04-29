// import necessary package
import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/views/home/home_screen.dart';
// import custom package
import '../../utils/font_res.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const HomeScreen())
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: ColorRes.primaryBlack,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ABR",
                  style: TextStyle(
                      color: ColorRes.white,
                      fontFamily: FontRes.ralewayThin,
                      fontSize: 18
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SOFTTECH",
                  style: TextStyle(
                      color: ColorRes.white,
                      fontFamily: FontRes.ralewaySemiBold,
                      fontSize: 28
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

}

