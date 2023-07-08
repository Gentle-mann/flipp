import 'package:shared_preferences/shared_preferences.dart';

class FlippCache {
  static const kUser = 'user';
  static const kOnboarding = 'onboarding';

  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kUser, false);
    await prefs.setBool(kOnboarding, false);
  }

  Future<void> cacheUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kUser, true);
  }

  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kOnboarding, true);
  }

  Future<bool> isUserSignedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kUser) ?? false;
  }

  Future<bool> didCompleteOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kOnboarding) ?? false;
  }
}
