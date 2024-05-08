
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import custom package
import '../../logic/theme/theme_bloc.dart';
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';
import '../../utils/theme_res.dart';

class BottomNavView extends StatefulWidget {
  
  final int currentIndex;
  final Function(int value) onTap;
  const BottomNavView({
    super.key, 
    required this.onTap,
    this.currentIndex = 0
  });

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
        builder: (_, themeState) {
          return Container(
            constraints: const BoxConstraints(
                minHeight: 65
            ),
            padding: const EdgeInsets.only(
                left: 15, right: 15,
                top: 10, bottom: 10
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                _buildButton(
                    isSelected: (widget.currentIndex == 0),
                    index: 0,
                    icon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icHomeWhite : ImageRes.icHomeBlack,
                    selectedIcon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icHomeWhite : ImageRes.icHomeBlack,
                ),

                _buildButton(
                  isSelected: (widget.currentIndex == 1),
                  index: 1,
                  icon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icChatBubbleWhite : ImageRes.icChatBubbleBlack,
                  selectedIcon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icChatBubbleWhite : ImageRes.icChatBubbleBlack,
                ),

                _buildButton(
                  isSelected: (widget.currentIndex == 2),
                  index: 2,
                  icon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icAddWhite : ImageRes.icAddBlack,
                  selectedIcon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icAddWhite : ImageRes.icAddBlack,
                ),

                _buildButton(
                  isSelected: (widget.currentIndex == 3),
                  index: 3,
                  icon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icSearchWhite : ImageRes.icSearchBlack,
                  selectedIcon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icSearchWhite : ImageRes.icSearchBlack,
                ),

                _buildButton(
                  isSelected: (widget.currentIndex == 4),
                  index: 4,
                  icon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icSettingsWhite : ImageRes.icSettingsBlack,
                  selectedIcon: (themeState == ThemeRes.of().darkTheme) ? ImageRes.icSettingsWhite : ImageRes.icSettingsBlack,
                ),
              ],
            ),
          );
        }
    );
  }

  Widget _buildButton({
    required bool isSelected,
    required int index,
    required String icon,
    required String selectedIcon,
  }){

    return isSelected
        ? InkWell(
      onTap: () => widget.onTap(index),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onBackground,
            borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(12.0),
        child: Image(
          image: AssetImage(
              selectedIcon
          ),
          height: 24,
        ),
      ),
    )
        : InkWell(
      onTap: () => widget.onTap(index),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            color: ColorRes.transparent,
            borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(12.0),
        child: Image(
          image: AssetImage(
              icon
          ),
          height: 24,
        ),
      ),
    );
  }

}
