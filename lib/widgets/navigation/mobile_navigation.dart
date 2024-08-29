import 'package:djwl_app/models/menu_info.dart';
import 'package:djwl_app/widgets/navigation/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileNavigation extends StatelessWidget {
  final List<NavigationItem> menus;
  const MobileNavigation({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuInfoModel>(builder: (context, value, child) {
      var useMenu = value.selectedNavigation;

      return Scaffold(
        body: useMenu.widget,
        appBar: AppBar(
          title: Text(useMenu.title),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: useMenu.index,
          items: [
            for (var item in menus)
              BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.title,
              )
          ],
          onTap: (index) {
            var selectMenu = menus[index];
            Provider.of<MenuInfoModel>(context, listen: false)
                .updateMenuSelectIndex(selectMenu);
          },
        ),
      );
    });
  }
}
