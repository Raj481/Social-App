
import 'package:flutter/material.dart';
import 'package:socialapp/extentions/string_extentions.dart';
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
          horizontal: 10,
          vertical: 10
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5
                ),
                child: Image(
                    image: AssetImage(
                        ImageRes.bg3
                    )
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rajesh Regar",
                          style: Theme.of(context).textTheme.titleMedium,
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
                              "54645546".kmbGenerator(),
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyMedium,
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
