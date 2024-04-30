
// import necessary package
import 'package:flutter/material.dart';
import 'package:socialapp/views/search/search_screen.dart';
import 'package:socialapp/views/setting/settings_screen.dart';
// import custom package
import '../../utils/color_res.dart';
import '../chat/chat_list_screen.dart';
import '../home/home_screen.dart';
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
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack,
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
        onTap: (value ) {
          if(value == 2) return;
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
