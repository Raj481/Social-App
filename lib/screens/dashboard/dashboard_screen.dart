
// import necessary package
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import custom package
import '../../logic/theme/theme_bloc.dart';
import '../../logic/theme/theme_event.dart';
import '../../utils/color_res.dart';
import '../chat/chat_list_screen.dart';
import '../home/home_screen.dart';
import '../posts/add_new_post_screen.dart';
import '../search/search_screen.dart';
import '../setting/settings_screen.dart';
import 'bottom_nav_view.dart';


class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {


  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
        builder: (_, state) {
          return Scaffold(
            // ColorRes.primaryBlack
            backgroundColor: Theme.of(context).primaryColor,
            body: IndexedStack(
              index: index,
              children: const [
                HomeScreen(),
                ChatListScreen(),
                SizedBox.shrink(),
                SearchScreen(),
                SettingsScreen()
              ],
            ),
            bottomNavigationBar:  BottomNavView(
              currentIndex: index,
              onTap: (value ) {
                if(value == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_)=> const AddNewPostScreen()
                      ));
                } else {
                  setState(() {
                    index = value;
                  });
                }
              },
            ),
          );
        }
    );
  }
}
