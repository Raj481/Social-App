
import 'package:flutter/material.dart';
// import custom package
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';
import '../../widgets/post_item_view.dart';
import '../posts/post_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white.withOpacity(.03),
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.appName.toUpperCase(),
              style: TextStyle(
                  fontFamily: FontRes.ralewaySemiBold,
                  color: ColorRes.white,
                  fontSize: 18
              ),
            ),
            decoration: BoxDecoration(
              color: ColorRes.primaryBlack
            ),
          ),
          Flexible(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_)
                                => const PostDetailScreen()
                            )
                        );
                      },
                        child: const PostItemView()
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
