// lib/Home.dart
import 'package:flutter/material.dart';
import 'package:flutter_zth/data/notifier.dart';
import 'package:flutter_zth/screens/menu/home_screen.dart';
import 'package:flutter_zth/screens/menu/about_screen.dart';
import 'package:flutter_zth/widgets/btn_nav_bar_widget.dart';

List<Widget> pages = [const HomeScreen(), const AboutScreen()];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: const BtnNavBarWidget(),
    );
  }
}
