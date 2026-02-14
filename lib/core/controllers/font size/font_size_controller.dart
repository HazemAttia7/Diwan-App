import 'package:flutter/material.dart';

class FontSizeController extends ChangeNotifier {
  double _fontSizeMultiplier = 1.0;
  
  static const double _minMultiplier = 0.8;
  static const double _maxMultiplier = 1.5;
  static const double _step = 0.1;
  
  double get fontSizeMultiplier => _fontSizeMultiplier;
  
  void increaseFontSize() {
    if (_fontSizeMultiplier < _maxMultiplier) {
      _fontSizeMultiplier += _step;
      notifyListeners();
    }
  }
  
  void decreaseFontSize() {
    if (_fontSizeMultiplier > _minMultiplier) {
      _fontSizeMultiplier -= _step;
      notifyListeners();
    }
  }
  
  void resetFontSize() {
    _fontSizeMultiplier = 1.0;
    notifyListeners();
  }
  
  bool get canIncrease => _fontSizeMultiplier < _maxMultiplier;
  bool get canDecrease => _fontSizeMultiplier > _minMultiplier;
}