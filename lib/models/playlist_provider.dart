import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../pages/song_page.dart';
import 'song.dart';

class PlayListProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: 'ambient',
        artisName: '浮桥如',
        albumArtImagePath: 'assets/images/weiwei.jpg',
        audioPath: 'audio/ambient_c_motion.mp3'),
    Song(
        songName: 'coins',
        artisName: '浮桥如',
        albumArtImagePath: 'assets/images/weiwei2.jpg',
        audioPath: 'audio/coins.mp3'),
    Song(
        songName: '微微',
        artisName: '浮桥如',
        albumArtImagePath: 'assets/images/weiwei.jpg',
        audioPath: 'audio/weiwei.mp3'),
  ];

  int _currentSongIndex = 0;

  List<Song> get playList => _playlist;

  int get currentSongIndex => _currentSongIndex;

  bool get isPlaying => _isPlaying;

  Duration get currentDuration => _currentDuration;

  Duration get totalDuration => _totalDuration;

  set currentSongIndex(index) {
    _currentSongIndex = index;
    play();
    notifyListeners();
  }

  // audio player
  final AudioPlayer _audioPlayer = AudioPlayer();

  // 播放时长
  Duration _currentDuration = Duration.zero;

  // 音频时长
  Duration _totalDuration = Duration.zero;

  // 是否初始化
  bool _isPlaying = false;

  void play() async {
    final String path = _playlist[_currentSongIndex].audioPath;
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(path));
    _isPlaying = true;
    notifyListeners();
  }

  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = false;
    notifyListeners();
  }

  void pauseOnResume() {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }
  }

  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  void playNextSong() {
    if (currentSongIndex < _playlist.length - 1) {
      // 播放下一首
      currentSongIndex += 1;
    } else {
      currentSongIndex = 0;
    }
  }

  void playPreviousSong() async {
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    } else {
      if (currentSongIndex > 0) {
        currentSongIndex -= 1;
      } else {
        currentSongIndex = _playlist.length - 1;
      }
    }
  }

  PlayListProvider() {
    initListenDuration();
  }

  // 初始化播放监听
  void initListenDuration() {
    // 监听时长
    _audioPlayer.onDurationChanged.listen((duration) {
      _totalDuration = duration;
      notifyListeners();
    });
    // 监听播放进度
    _audioPlayer.onPositionChanged.listen((duration) {
      _currentDuration = duration;
      notifyListeners();
    });
    // 监听播放完成
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }

  goToSong(BuildContext context, int index) {
    currentSongIndex = index;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SongPage()));
  }
}
