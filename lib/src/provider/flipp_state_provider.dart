import 'package:flutter/material.dart';

import '../models/models_barrel.dart';

class FlippStateProvider extends ChangeNotifier {
  int _currentTabIndex = 0;

  bool _isSignedIn = false;
  bool _hasOnboarded = false;
  final _flippCache = FlippCache();

  bool get isSignedIn {
    return _isSignedIn;
  }

  bool get hasOnboarded {
    return _hasOnboarded;
  }

  int get currentTabIndex {
    return _currentTabIndex;
  }

  void changeTab(index) {
    _currentTabIndex = index;
    notifyListeners();
  }

  Future<void> initialize() async {
    _isSignedIn = await _flippCache.isUserSignedIn();
    _hasOnboarded = await _flippCache.didCompleteOnboarding();
  }

  void signIn(String username, String password) async {
    _isSignedIn = true;
    await _flippCache.cacheUser();
    notifyListeners();
  }

  void onboard() async {
    _hasOnboarded = true;
    await _flippCache.completeOnboarding();
    notifyListeners();
  }

  void logout() async {
    _isSignedIn = false;
    _hasOnboarded = false;
    await _flippCache.signOut();
    await initialize();
    notifyListeners();
  }
}
