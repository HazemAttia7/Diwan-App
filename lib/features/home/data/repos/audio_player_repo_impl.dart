import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:poem_app/features/home/data/models/verse_timestamp.dart';
import 'package:poem_app/features/home/data/repos/audio_player_repo.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerRepoImpl implements AudioPlayerRepo {
  final AudioPlayer _player = AudioPlayer();
  List<VerseTimestamp> _timestamps = [];

  @override
  Future<void> init({
    required String audioPath,
    required String audioTimestampsPath,
  }) async {
    final jsonStr = await rootBundle.loadString(audioTimestampsPath);
    final List data = jsonDecode(jsonStr);
    _timestamps = data.map((e) => VerseTimestamp.fromJson(e)).toList();

    await _player.setAsset(audioPath);
  }

  @override
  Stream<int?> get activeVerseStream => _player.positionStream.map((position) {
    final seconds = position.inMilliseconds / 1000.0;
    for (final ts in _timestamps) {
      if (seconds >= ts.start && seconds < ts.end) return ts.verse;
    }
    return null;
  });

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();
  
  @override
  Future<void> seekToVerse(int verse) async {
    final ts = _timestamps.firstWhere(
      (t) => t.verse == verse,
      orElse: () => _timestamps.first,
    );
    await _player.seek(Duration(milliseconds: (ts.start * 1000).toInt()));
  }

  @override
  void dispose() => _player.dispose();
}
