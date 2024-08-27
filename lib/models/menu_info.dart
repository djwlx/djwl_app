import 'package:flutter/material.dart';

class MenuInfoModel extends ChangeNotifier {
  int _menuSelectIndex = 0;

  int get menuSelectIndex => _menuSelectIndex;

  void updateMenuSelectIndex(int index) {
    _menuSelectIndex = index;
    notifyListeners();
  }
}
