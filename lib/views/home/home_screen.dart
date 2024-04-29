
// import necessary package
import 'package:flutter/material.dart';

// import custom package
import '../../utils/color_res.dart';
import 'home_app_bar_view.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack,
      body: Column(
        children: [
          HomeAppBarView()
        ],
      ),
    );
  }
}
