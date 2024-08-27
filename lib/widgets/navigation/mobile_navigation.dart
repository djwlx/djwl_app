import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('widget');
  }
}
 // bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: navigationIndex,
        //     onTap: (value) => setState(() {
        //           navigationIndex = value;
        //         }),
        //     items: const [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.window),
        //         label: 'Home',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person_rounded),
        //         label: 'Login',
        //       ),
        //     ]),