
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/string_res.dart';
import 'package:socialapp/views/login/widget/login_footer_view.dart';
import 'package:socialapp/views/login/widget/login_header_view.dart';
import 'package:socialapp/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.brownLight,
      body: Container(
        padding:  const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 5
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              ...[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                        minHeight: 200
                    ),
                    decoration: BoxDecoration(
                      color: ColorRes.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LoginHeaderView(
                          logoHeight: 80,
                          textStyle:  TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: ColorRes.brownDark
                          ),
                        ),
                        const SizedBox(height: 25,),
                        Row(
                          children: [
                            CustomTextField(
                              hintText: StringRes.mobileNumber,
                            )
                          ],
                        ),
                        const SizedBox(height: 25,),
                        Row(
                          children: [
                            CustomTextField(
                              hintText: StringRes.password,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
          
                const SizedBox(height: 15,),
                FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: ColorRes.white,
                  mini: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorRes.brownDark,
                    size: 15,
                  ),
                ),
          
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                          text: StringRes.msgHaveAnAccount,
                          children: [
                            // controller.onRegisterNowTap
                            TextSpan(
                              text: StringRes.registerNow,
                              recognizer: TapGestureRecognizer()
                                ..onTap  = () {

                                },
                              style: TextStyle(
                                  color: ColorRes.brownDark,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ]
                        )
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                const LoginFooterView(),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
