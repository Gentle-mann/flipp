import 'package:flutter/material.dart';

class Languages {
  static final List<String> languages = [
    'English',
    'German',
    'Portuguese',
    'Chinese',
  ];
}

class FlippStateProvider extends ChangeNotifier {
  int _currentIndex = 0;
  String _inputLanguage = '';
  String _outputLanguage = '';
  //String _outputLanguage = 'German';
  int get currentIndex {
    return _currentIndex;
  }

  String get inputLanguage {
    return _inputLanguage;
  }

  String get outputLanguage {
    return _outputLanguage;
  }

  void changeTab(index) {
    _currentIndex = index;
    notifyListeners();
  }

  void selectInputLanguage(language) {
    _inputLanguage = language;
    notifyListeners();
  }

  void selectOutputLanguage(language) {
    _outputLanguage = language;
    notifyListeners();
  }
}
