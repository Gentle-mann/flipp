import 'package:flutter/material.dart';

import '../../constants.dart';
import '../themes_barrel.dart';

class TextFieldTheme {
  static InputDecorationTheme inputDecorationTheme() {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kPrimaryColor),
    );
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      hintStyle: LightTextTheme.lightTextTheme.displaySmall,
      labelStyle: LightTextTheme.lightTextTheme.displaySmall,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }
}
