import 'package:flipp/src/views/custom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../size_configuration.dart';
import 'tabs/tabs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.selectedTab});
  final int selectedTab;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    final List<Widget> tabs = [
      const RecentsTab(),
      const TextTab(),
      const SpeechTab(),
      const SettingsTab(),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 240, 240),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size * 2,
            vertical: size * 3,
          ),
          child: IndexedStack(
            index: selectedTab,
            children: tabs,
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(currentIndex: selectedTab),
    );
  }
}
