import 'dart:io';
import 'package:flutter/material.dart';

import 'desktop_navigation.dart';

class NavigationItem {
  final String title;
  final IconData icon;
  final int index;
  final bool show;

  NavigationItem({
    required this.title,
    required this.icon,
    required this.index,
    required this.show,
  });
}

class NavigationMain extends StatefulWidget {
  const NavigationMain({super.key, required this.children});
  final Widget children;

  @override
  State<NavigationMain> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<NavigationMain> {
  final List<NavigationItem> menuConfig = [
    NavigationItem(title: "首页", icon: Icons.window, index: 0, show: true),
    NavigationItem(
        title: "个人", icon: Icons.person_rounded, index: 1, show: true)
  ];

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      return DesktopNavigation(
        children: widget.children,
      );
    }
    return const Text('Navigation Main');
  }
}
