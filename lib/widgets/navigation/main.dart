import 'dart:io';
import 'package:djwl_app/widgets/navigation/menu.dart';
import 'package:djwl_app/widgets/navigation/mobile_navigation.dart';
import 'package:flutter/material.dart';
import 'desktop_navigation.dart';

class NavigationMain extends StatefulWidget {
  const NavigationMain({super.key});

  @override
  State<NavigationMain> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<NavigationMain> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // 当屏幕宽度小于600时返回移动端导航
          return MobileNavigation(menus: navigationItems);
        } else {
          // 当屏幕宽度大于等于600时返回桌面端导航
          return DesktopNavigation(
            menus: navigationItems,
          );
        }
      },
    );
  }
}
