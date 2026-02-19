import 'dart:async';
import 'package:flutter/material.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/data/repos/audio_player_repo.dart';

class ReaderController extends ChangeNotifier {
  final AudioPlayerRepo _audioRepo;
  bool _isInitialized = false;
  ReaderController({required AudioPlayerRepo audioRepo})
    : _audioRepo = audioRepo;

  int _currentVerseIndex = -1;
  bool _isPlaying = false;
  StreamSubscription<int?>? _verseSubscription;

  int get currentVerseIndex => _currentVerseIndex;
  bool get isPlaying => _isPlaying;

  Future<void> init({
    required String audioPath,
    required String audioTimestampsPath,
  }) async {
    if (_isInitialized || audioPath.isEmpty || audioTimestampsPath.isEmpty) {
      return;
    }

    _isInitialized = true;

    await _audioRepo.init(
      audioPath: audioPath,
      audioTimestampsPath: audioTimestampsPath,
    );

    _verseSubscription = _audioRepo.activeVerseStream.listen((verseNumber) {
      if (verseNumber != null) {
        final newIndex = verseNumber - 1;
        if (newIndex != _currentVerseIndex) {
          _currentVerseIndex = newIndex;
          notifyListeners();
        }
      }
    });
  }

  Future<void> play({required List<Verse> verses}) async {
    _verseSubscription ??= _audioRepo.activeVerseStream.listen((verseNumber) {
      if (verseNumber != null) {
        final newIndex = verseNumber - 1;
        if (newIndex != _currentVerseIndex) {
          _currentVerseIndex = newIndex;
          notifyListeners();
        }
      }
    });
    if (_currentVerseIndex == -1) {
      await _audioRepo.seekToVerse(1);
    }
    _isPlaying = true;
    notifyListeners();
    await _audioRepo.play();
  }

  Future<void> pause() async {
    _isPlaying = false;
    notifyListeners();
    await _audioRepo.pause();
  }

  Future<void> seekToVerse(int verseIndex) async {
    await _audioRepo.seekToVerse(verseIndex + 1);
  }

  Future<void> stop() async {
    await _verseSubscription?.cancel();
    _verseSubscription = null;
    _isPlaying = false;
    _currentVerseIndex = -1;
    _isInitialized = false;
    notifyListeners();
    await _audioRepo.pause();
    await _audioRepo.seekToVerse(1);
  }

  @override
  void dispose() {
    _verseSubscription?.cancel();
    _audioRepo.dispose();
    super.dispose();
  }
}
