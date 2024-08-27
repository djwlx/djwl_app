import 'package:djwl_app/models/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // switch (navigationIndex) {
    //   case 0:
    //     childWidget = const Text('home');
    //     break;
    //   case 1:
    //     childWidget = const UserPage();
    //     break;
    //   default:
    //     throw UnimplementedError('no widget for $navigationIndex');
    // }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('App'),
          toolbarHeight: 50,
        ),
        body: Consumer<MenuInfoModel>(
          builder: (context, value, child) {
            // switch (navigationIndex) {
            //   case 0:
            //     childWidget = const Text('home');
            //     break;
            //   case 1:
            //     childWidget = const UserPage();
            //     break;
            //   default:
            //     throw UnimplementedError('no widget for $navigationIndex');
            // }

            return const Text('hellos');
          },
        ));
  }
}
