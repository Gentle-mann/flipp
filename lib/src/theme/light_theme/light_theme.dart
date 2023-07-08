import 'package:flipp/src/theme/light_theme/input_decoration.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../themes_barrel.dart';

class LightTheme {
  LightTheme._();
  static ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      useMaterial3: true,
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return kPrimaryColor;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
      ),
      textTheme: LightTextTheme.lightTextTheme,
      inputDecorationTheme: TextFieldTheme.inputDecorationTheme(),
    );
  }
}
