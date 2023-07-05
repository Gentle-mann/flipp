import 'package:flutter/material.dart';

import '../../constants.dart';

class TextFieldTheme {
  static InputDecorationTheme inputDecorationTheme() {
    var outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kPrimaryColor),
    );
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }
}
