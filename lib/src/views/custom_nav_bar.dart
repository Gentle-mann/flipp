import 'package:flipp/src/provider/providers.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../constants.dart';
import '../size_configuration.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    const List<GButton> tabs = [
      GButton(
        icon: Icons.home_rounded,
        text: 'Recents',
      ),
      GButton(
        icon: Icons.text_fields_rounded,
        text: 'Text',
      ),
      GButton(
        icon: Icons.mic_rounded,
        text: 'Speech',
      ),
      GButton(
        icon: Icons.settings,
        text: 'Settings',
      ),
    ];
    return GNav(
      selectedIndex: currentIndex,
      onTabChange: (index) {
        Provider.of<FlippStateProvider>(context, listen: false)
            .changeTab(index);
        context.goNamed(
          'home',
          pathParameters: {
            'tab': '$index',
          },
        );
      },
      backgroundColor: kPrimaryColor,
      gap: size,
      color: Colors.black,
      activeColor: Colors.white,
      //tabBackgroundColor: ,

      tabs: tabs,
    );
  }
}
