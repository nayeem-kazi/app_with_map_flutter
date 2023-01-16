import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_with_map/controller/auth.dart';
import 'package:get/get.dart';

class NavDrware extends StatefulWidget {
  const NavDrware({Key? key}) : super(key: key);

  @override
  State<NavDrware> createState() => _NavDrwareState();
}

class _NavDrwareState extends State<NavDrware> {
  @override
  Widget build(BuildContext context) {
  var auth = Get.put(Auth());
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // FirebaseAuth.instance.signOut();
                // Update the state of the app.
                auth.signOut();
                // ...
              },
            ),
          ],
        ),
    );
  }
}
