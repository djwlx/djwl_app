import 'package:djwl_app/models/menu_info.dart';
import 'package:djwl_app/widgets/navigation/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopNavigation extends StatelessWidget {
  final List<NavigationItem> menus;
  const DesktopNavigation({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuInfoModel>(builder: (context, value, child) {
      var useMenu = value.selectedNavigation;

      return Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: NavigationRail(
              extended: false,
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              destinations: [
                for (var item in menus)
                  NavigationRailDestination(
                      icon: Icon(item.icon), label: Text(item.title)),
              ],
              selectedIndex: useMenu.index,
              onDestinationSelected: (index) {
                var selectMenu = menus[index];
                Provider.of<MenuInfoModel>(context, listen: false)
                    .updateMenuSelectIndex(selectMenu);
              },
            )),
            Expanded(child: useMenu.widget)
          ],
        ),
      );
    });
  }
}
 // Container(
              //   color: Theme.of(context).colorScheme.primaryContainer,
              //   alignment: Alignment.topLeft,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.max, // 设置Column占据最小的可用空间
              //     crossAxisAlignment: CrossAxisAlignment.start, // 设置垂直对齐方式为顶部对齐
              //     children: [
              //       useChildren,
              //     ],
              //   ),
              // ),
