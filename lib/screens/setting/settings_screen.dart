
import 'package:flutter/material.dart';
import 'package:socialapp/widgets/rounded_container_view.dart';

import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  final List<String> _list = [
    "Notifications",
    "Blocked List",
    "Terms and Conditions",
    "Privacy",
    "Help",
    "About",
    "Logout"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.settings.toUpperCase(),
              style: TextStyle(
                  fontFamily: FontRes.ralewaySemiBold,
                  color: ColorRes.white,
                  fontSize: 18
              ),
            ),
          ),
          Flexible(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: _list.length,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25, vertical: 25
                  ),
                  itemBuilder: (_, index){
                    return RoundedContainerView(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5
                      ),
                      constraints: const BoxConstraints(
                        minHeight: 45
                      ),
                      boxDecoration: BoxDecoration(
                        color: ColorRes.greyMedium.withOpacity(.1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _list.elementAt(index).toUpperCase(),
                                style: TextStyle(
                                    fontFamily: FontRes.robotoRegular,
                                    color: ColorRes.white,
                                    fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
