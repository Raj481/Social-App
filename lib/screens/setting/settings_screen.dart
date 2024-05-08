
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

  final List<String> _list = [
    "Theme Light",
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.settings.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge,
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
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () => onItemTap(index),
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
                                style: Theme.of(context).textTheme.displaySmall,
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

  onItemTap(int index){
    if(index == 0){
      setState(() {
        _list[index] = "Theme Light";
      });
      BlocProvider.of<ThemeBloc>(context).add(ThemeSwitchEvent());
    }
  }
}
