import 'package:djwl_app/widgets/navigation/menu.dart';
import 'package:flutter/material.dart';

class MenuInfoModel extends ChangeNotifier {
  NavigationItem _selectedNavigation = navigationItems[0];

  NavigationItem get selectedNavigation => _selectedNavigation;

  void updateMenuSelectIndex(NavigationItem item) {
    _selectedNavigation = item;
    notifyListeners();
  }
}
