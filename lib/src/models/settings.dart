class Settings {
  final String iconSrc;
  final String setting;

  Settings({required this.iconSrc, required this.setting});

  static final List<Settings> settings = [
    Settings(
      iconSrc: 'assets/icons/profile',
      setting: 'My Profile',
    ),
    Settings(
      iconSrc: 'assets/icons/dark mode',
      setting: 'Dark Mode',
    ),
    Settings(
      iconSrc: 'assets/icons/cursor',
      setting: 'Visit flipp.org',
    ),
  ];
}
