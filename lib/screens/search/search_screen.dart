
import 'package:flutter/material.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';
import '../../widgets/custom_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.search.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
             /* CustomTextField(
                hintText: "Search",
                boxDecoration: BoxDecoration(
                  color: ColorRes.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintStyle: TextStyle(
                  color: ColorRes.white.withOpacity(.3),
                  fontFamily: FontRes.robotoRegular,
                  fontSize: 14
                ),
                textStyle: TextStyle(
                    color: ColorRes.white,
                    fontFamily: FontRes.robotoRegular,
                    fontSize: 14
                ),
              ),*/
            ],
          ),
          const SizedBox(height: 15,),
          /*SizedBox(
            height: 190,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: ColorRes.white.withOpacity(.1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15
                    ),
                    width: 120,
                    child: Column(
                      children: [
                        Container(
                         constraints: const BoxConstraints(
                           minHeight: 90,
                           minWidth: 80
                         ),
                         decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage(
                                   ImageRes.bg3
                               )
                           ),
                           borderRadius: BorderRadius.circular(10)
                         ),
                       ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rajesh Regar",
                              style: TextStyle(
                                color: ColorRes.whiteMedium,
                                fontFamily: FontRes.ralewaySemiBold,
                                fontSize: 18
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "BIO",
                              style: TextStyle(
                                color: ColorRes.whiteMedium,
                                fontFamily: FontRes.openSansLight,
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }
            ),
          ),*/
          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}
