
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/widgets/rounded_container_view.dart';

import '../../logic/theme/theme_bloc.dart';
import '../../logic/theme/theme_event.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.settings.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 25,),
                  _buildItem(
                      name: StringRes.themeLight,
                      callback: () => onItemTap(0)
                  ),
                  _buildItem(
                      name: StringRes.privacy,
                      callback: () => onItemTap(1)
                  ),
                  _buildItem(
                      name: StringRes.termsAndConditions,
                      callback: () => onItemTap(2)
                  ),
                  _buildItem(
                      name: StringRes.help,
                      callback: () => onItemTap(3)
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem({
    required String name,
    bool isSwitchEnable = false,
    required Function callback }){

    return RoundedContainerView(
      margin: const EdgeInsets.symmetric(
          vertical: 5
      ),
      constraints: const BoxConstraints(
          minHeight: 50
      ),
      boxDecoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () => callback(),
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 15
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name.toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall,
              ),

              // Switch(
              //     value: false,
              //     onChanged: (value){},
              // )
            ],
          ),
        ),
      ),
    );
  }

  onItemTap(int index){
    if(index == 0){
      setState(() {
       // _list[index] = _list[index].contains("Theme Light") ? "Theme Dark" : "Theme Light";
      });
      BlocProvider.of<ThemeBloc>(context).add(ThemeSwitchEvent());
    }
  }
}
