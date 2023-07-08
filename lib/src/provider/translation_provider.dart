import 'package:flutter/material.dart';

class TranslationProvider extends ChangeNotifier {
  String _inputLanguage = '';
  String _outputLanguage = '';
  final List<String> _errors = [];

  String get inputLanguage {
    return _inputLanguage;
  }

  String get outputLanguage {
    return _outputLanguage;
  }

  List<String> get errors {
    return _errors;
  }

  void selectInputLanguage(language) {
    _inputLanguage = language;
    notifyListeners();
  }

  void selectOutputLanguage(language) {
    _outputLanguage = language;
    notifyListeners();
  }

  void removeError(error) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
    notifyListeners();
  }

  void addError(String error) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
    notifyListeners();
  }
}
