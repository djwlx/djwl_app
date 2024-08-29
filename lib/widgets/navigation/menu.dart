import 'package:djwl_app/pages/home/main.dart';
import 'package:flutter/material.dart';

class NavigationItem {
  final String title;
  final IconData icon;
  final int index;
  final bool show;
  final Widget widget;

  NavigationItem(
      {required this.title,
      required this.icon,
      required this.index,
      required this.show,
      required this.widget});
}

// index顺序必须对应
List<NavigationItem> navigationItems = [
  NavigationItem(
      title: '首页',
      icon: Icons.home,
      index: 0,
      show: true,
      widget: const HomePage()),
  NavigationItem(
      title: '我的',
      icon: Icons.person,
      index: 1,
      show: true,
      widget: const Text('我的')),
  // NavigationItem(
  //     title: '推荐',
  //     icon: Icons.hot_tub,
  //     index: 2,
  //     show: true,
  //     widget: const Text('推荐')),
];
