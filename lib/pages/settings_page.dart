import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '设置',
        ),
        // titleSpacing: 0.0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).pop();
        //   },
        //   child: Icon(Icons.arrow_back,
        //       color: Theme.of(context).colorScheme.inversePrimary),
        // ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(16),
            padding:
                const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('暗色模式'),
                ),
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDartModel,
                  onChanged: (state) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
