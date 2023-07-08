import 'package:flutter/material.dart';

import '../models/models_barrel.dart';

class ProfileProvider extends ChangeNotifier {
  User get getUser => User(
        name: 'Khalifa',
        role: 'Flutter Dev',
        profileImageUrl: 'assets/images/photo.jpg',
        darkMode: _darkMode,
      );

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnRaywenderlich => _tapOnRaywenderlich;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnRaywenderlich = false;
  var _darkMode = false;

  set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  void tapOnRaywenderlich(bool selected) {
    _tapOnRaywenderlich = selected;
    notifyListeners();
  }

  void tapOnProfile(bool selected) {
    _didSelectUser = selected;
    notifyListeners();
  }
}
