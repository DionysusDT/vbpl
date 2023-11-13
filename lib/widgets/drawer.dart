import 'package:flutter/material.dart';

class DrawerCus extends StatefulWidget {
  const DrawerCus({super.key});

  @override
  State<DrawerCus> createState() => _DrawerCusState();
}

class _DrawerCusState extends State<DrawerCus> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 50,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'VBPL',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // ListTile(
            //   title: const Text('Home'),
            //   selected: currentIndex == 0,
            //   onTap: () {
            //     _onItemTapped(0);
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   title: const Text('Business'),
            //   selected: currentIndex == 1,
            //   onTap: () {
            //     // Update the state of the app
            //     _onItemTapped(1);
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   title: const Text('School'),
            //   selected: currentIndex == 2,
            //   onTap: () {
            //     // Update the state of the app
            //     _onItemTapped(2);
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      );
  }
}