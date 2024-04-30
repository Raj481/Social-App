
import 'package:flutter/material.dart';
import 'package:socialapp/utils/font_res.dart';
import '../utils/color_res.dart';
import '../utils/image_res.dart';

class PostItemView extends StatelessWidget {
  const PostItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: MediaQuery.of(context).size.height * .3,
      ),
      margin: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 5
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5
      ),
      decoration: BoxDecoration(
        color: ColorRes.white.withOpacity(.01),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Stack(
        children: [
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rajesh Regar",
                          style: TextStyle(
                            color: ColorRes.white,
                            fontFamily: FontRes.robotoMedium,
                            fontSize: 18
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: ColorRes.white,
                              size: 18,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "123456",
                              style: TextStyle(
                                  color: ColorRes.white,
                                  fontFamily: FontRes.robotoMedium,
                                  fontSize: 14
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
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
          ),

          // like button
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                  Icons.favorite_border,
                   color: ColorRes.white,
                    size: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
