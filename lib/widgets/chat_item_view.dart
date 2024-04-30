
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialapp/utils/image_res.dart';
import 'package:socialapp/widgets/rounded_container_view.dart';

import '../utils/color_res.dart';
import '../utils/font_res.dart';

class ChatItemView extends StatelessWidget {
  const ChatItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainerView(
      margin: const EdgeInsets.symmetric(
          vertical: 5, horizontal: 15
      ),
      constraints: const BoxConstraints(
          minHeight: 45
      ),
      boxDecoration: BoxDecoration(
        color: ColorRes.greyMedium.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 10
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ColorRes.white,
                        image: DecorationImage(
                            image: AssetImage(
                                ImageRes.bg3
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Bhawana Badgurjar",
                              style: TextStyle(
                                  fontFamily: FontRes.ralewaySemiBold,
                                  color: ColorRes.white,
                                  fontSize: 18
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hello Rajesh",
                              style: TextStyle(
                                  fontFamily: FontRes.robotoRegular,
                                  color: ColorRes.greyLight,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                right: 0, bottom: 0,
                child: Text(
                  "09:50 pm",
                  style: TextStyle(
                      fontFamily: FontRes.robotoRegular,
                      color: ColorRes.greyLight.withOpacity(.5),
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
