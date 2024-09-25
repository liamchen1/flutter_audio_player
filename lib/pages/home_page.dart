import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../componements/home_drawer.dart';
import '../models/playlist_provider.dart';
import '../models/song.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('播放列表'),
      ),
      body: Consumer<PlayListProvider>(
        builder: (BuildContext context, PlayListProvider value, Widget? child) {
          // return  List song
          return ListView.builder(
            itemCount: value.playList.length,
            itemBuilder: (context, index) {
              // return Song itemUI
              final Song song = value.playList[index];
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artisName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: () => value.goToSong(context, index),
              );
            },
          );
        },
      ),
      drawer: const HomeDrawer(),
    );
  }
}
