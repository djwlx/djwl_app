import 'package:djwl_app/models/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopNavigation extends StatelessWidget {
  final Widget children;

  const DesktopNavigation({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: Consumer<MenuInfoModel>(builder: (context, value, child) {
              return NavigationRail(
                extended: false,
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                  ),
                ],
                selectedIndex: value.menuSelectIndex,
                onDestinationSelected: (selectValue) {
                  Provider.of<MenuInfoModel>(context, listen: false)
                      .updateMenuSelectIndex(selectValue);
                },
              );
            }),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                children: [
                  children,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
