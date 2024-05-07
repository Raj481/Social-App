
import 'package:flutter/material.dart';

import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';

class AddNewPostScreen extends StatefulWidget {
  const AddNewPostScreen({super.key});

  @override
  State<AddNewPostScreen> createState() => _AddNewPostScreenState();
}

class _AddNewPostScreenState extends State<AddNewPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white.withOpacity(.2),
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.post.toUpperCase(),
              style: TextStyle(
                  fontFamily: FontRes.ralewaySemiBold,
                  color: ColorRes.white,
                  fontSize: 18
              ),
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: ColorRes.white,
                size: 15,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorRes.primaryBlack,
            ),
          ),
          const Column(
            children: [ ],
          )
        ],
      ),
    );
  }
}
