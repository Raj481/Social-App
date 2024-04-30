
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({super.key});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white.withOpacity(.2),
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              "Rajesh Regar".toUpperCase(),
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
          Column(
            children: [
              Image(
                  image: AssetImage(
                      ImageRes.bg3
                  )
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 10
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // like button
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: ColorRes.white,
                          size: 21,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "2000",
                          style: TextStyle(
                              color: ColorRes.white,
                              fontFamily: FontRes.robotoMedium,
                              fontSize: 14
                          ),
                        )
                      ],
                    ),
                    // comment button
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.comment,
                          color: ColorRes.white,
                          size: 21,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "123",
                          style: TextStyle(
                              color: ColorRes.white,
                              fontFamily: FontRes.robotoMedium,
                              fontSize: 14
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 0
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
                            style: TextStyle(
                                color: ColorRes.greyLight,
                                fontFamily: FontRes.robotoRegular,
                                fontSize: 16
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
