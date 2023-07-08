import 'package:flutter/material.dart';

const kPrimaryColor = Color(0XFF0000FF);
//const kPrimaryColor = Color(0XFF1338BE);

class FlippErrors {
  static const kNullEmail = 'Please enter your email';
  static const kNullName = 'Please enter your name';

  static const kInvalidEmail = 'Please enter a valid email';
  static const kNullPassword = 'Please enter your password';
  static const kInvalidPassword =
      'Password must be at least 8 characters long and contain 1 lower case, 1 upper case, 1 number, and one special character(e.g. @#\$%)';

  static const kMatchPassword = 'Passwords don\'t match';
  static const kShortPassword = 'Password is too short';
}
