
import 'package:flutter/material.dart';
import 'package:socialapp/extentions/string_extentions.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/image_res.dart';
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
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              "Rajesh Regar".toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).iconTheme.color,
                size: 14,
              ),
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
                          color: Theme.of(context).iconTheme.color,
                          size: 18,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "54645546".kmbGenerator(),
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                    // comment button
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.comment,
                          color: Theme.of(context).iconTheme.color,
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
                            style: Theme.of(context).textTheme.bodyMedium,
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
