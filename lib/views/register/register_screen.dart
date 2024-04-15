
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialapp/utils/color_res.dart';
import 'package:socialapp/utils/string_res.dart';
import 'package:socialapp/views/register/widgets/register_header_view.dart';
import 'package:socialapp/widgets/custom_text_field.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.brownLight,
      body: Stack(
        children: [
          Column(
            children: [
              const RegisterHeaderView(),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorRes.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 25,),
                              Row(
                                children: [
                                  CustomTextField(
                                    hintText: StringRes.firstName,
                                  )
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  CustomTextField(
                                    hintText: StringRes.lastName,
                                  )
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  CustomTextField(
                                    hintText: StringRes.mobileNumber,
                                  )
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  CustomTextField(
                                    hintText: StringRes.email,
                                  )
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  CustomTextField(
                                    hintText: StringRes.password,
                                  )
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  CustomTextField(
                                    hintText: StringRes.confirmPassword,
                                  )
                                ],
                              ),

                              const SizedBox(height: 25,),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                        ],
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              )

            ],
          ),
          Positioned(
              top: 40,
              left: 15,
              child: IconButton(
                color: ColorRes.white,
                onPressed: (){},
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorRes.white,
                  size: 25,
                ),
              )
          )
        ],
      ),
    );
  }

}
