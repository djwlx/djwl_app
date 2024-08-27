import 'package:flutter/material.dart';

class DesktopNavigation extends StatelessWidget {
  final Widget children;
  final Function(int) updateNavigation;

  const DesktopNavigation(
      {super.key, required this.children, required this.updateNavigation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: 0,
              onDestinationSelected: (value) {
                print('selected: $value');
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: children,
            ),
          )
        ],
      ),
    );
  }
}
