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
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      return DesktopNavigation(
        menus: navigationItems,
      );
    } else {
      return MobileNavigation(menus: navigationItems);
    }
  }
}
