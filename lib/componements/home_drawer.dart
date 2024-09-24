import 'package:flutter/material.dart';

import '../pages/settings_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 0, right: 20),
            child: ListTile(
              title: Text('首页',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              leading:  Icon(Icons.home, color: Theme.of(context).colorScheme.inversePrimary),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Container(
            color:  Theme.of(context).colorScheme.secondary,
            padding: const EdgeInsets.only(left: 20, top: 0, right: 20),
            child: ListTile(
              title: Text('设置',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              leading:  Icon(Icons.settings,color: Theme.of(context).colorScheme.inversePrimary),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
