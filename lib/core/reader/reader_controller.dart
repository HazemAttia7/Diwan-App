import 'package:flutter/material.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';

class ReaderController extends ChangeNotifier {
  int _currentVerseIndex = -1;
  bool _isPlaying = false;
  bool _shouldStop = false;
  bool _isDisposed = false;

  int get currentVerseIndex => _currentVerseIndex;
  bool get isPlaying => _isPlaying;

  void play({required List<Verse> verses}) async {
    _isPlaying = true;
    _shouldStop = false;
    notifyListeners();
    _currentVerseIndex = _currentVerseIndex == -1 ? 0 : _currentVerseIndex;
    for (int i = _currentVerseIndex; i < verses.length; i++) {
      if (_shouldStop) break;

      _currentVerseIndex = i;
      notifyListeners();

      await Future.delayed(const Duration(seconds: 1));

      if (_isDisposed) return;
    }
    _stopInternal();
  }

  void pause() {
    _shouldStop = true;
    _stopInternal();
  }

  void stop() {
    _shouldStop = true;
    _currentVerseIndex = -1;
    _stopInternal();
  }

  void _stopInternal() {
    _isPlaying = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _shouldStop = true;
    _isDisposed = true;
    super.dispose();
  }
}
