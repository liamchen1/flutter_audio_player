import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../componements/neu_box.dart';
import '../models/playlist_provider.dart';
import '../models/song.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  String formatTime(Duration duration) =>
      '${duration.inMinutes.toString().padLeft(2, '0')}: ${duration.inSeconds.remainder(60).toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayListProvider>(
      builder: (BuildContext context, PlayListProvider value, Widget? child) {
        final currentSong = value.playList[value.currentSongIndex];

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildAppbar(context),
                _buildAlbum(context, currentSong),
                _buildSongInfo(context, value),
                const SizedBox(height: 26),
                _buildControllerBtn(value),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // back button
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
          // title
          const Text(
            '播放详情页',
            style: TextStyle(fontSize: 20),
          ),
          //menu button
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
    );
  }

  Widget _buildAlbum(BuildContext context, Song song) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 10, bottom: 10),
      child: NeuBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(song.albumArtImagePath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 乐曲名字  演唱者
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(song.songName,
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text(song.artisName),
                    ],
                  ),
                  // 收藏图标
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSongInfo(
      BuildContext context, PlayListProvider playListProvider) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //  开始时间
              Text(formatTime(playListProvider.currentDuration)),
              // 顺序播放
              IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
              // 循环播放
              IconButton(onPressed: () {}, icon: const Icon(Icons.repeat)),
              // 结束时间
              Text(formatTime(playListProvider.totalDuration)),
            ],
          ),
        ),
        // 音乐播放进度条
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 0, // 这里控制圆的的半径
              disabledThumbRadius: 12,
            ),
          ),
          child: Slider(
            value: playListProvider.currentDuration.inSeconds.toDouble(),
            min: 0,
            max: playListProvider.totalDuration.inSeconds.toDouble(),
            // thumbColor: Colors.grey.shade500,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            onChanged: (double value) {},
            onChangeEnd: (double value){
              playListProvider.seek(Duration(seconds: value.toInt()));
            },
          ),
        ),
      ],
    );
  }

  Widget _buildControllerBtn(PlayListProvider value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: value.playPreviousSong,
              child: const NeuBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.skip_previous,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: value.pauseOnResume,
              child: NeuBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    value.isPlaying ? Icons.pause : Icons.play_arrow,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: GestureDetector(
              onTap: value.playNextSong,
              child: const NeuBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.skip_next,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
