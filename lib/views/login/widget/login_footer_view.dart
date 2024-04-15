
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/widgets/rounded_container_view.dart';

class LoginFooterView extends StatelessWidget {
  const LoginFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //   D
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedContainerView(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 18
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.google,
                      color: ColorRes.brownDark,
                      size: 15,
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      "Google".toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              ),
              RoundedContainerView(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 18
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.apple,
                      color: ColorRes.brownDark,
                      size: 15,
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      "Apple".toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ]
      )
    );
  }

}
