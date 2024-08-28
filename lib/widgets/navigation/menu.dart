import 'package:flutter/material.dart';

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

List<NavigationItem> navigationItems = [
  NavigationItem(
    title: '首页',
    icon: Icons.home,
    index: 0,
    show: true,
  ),
  NavigationItem(
    title: '我的',
    icon: Icons.person,
    index: 1,
    show: true,
  ),
];
