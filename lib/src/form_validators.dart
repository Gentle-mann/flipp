import 'package:flipp/src/constants.dart';
import 'package:flipp/src/provider/providers.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class FormValidators {
  final regExpEmailValidator = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z09]+\.[a-zA-Z]+");
  static late TranslationProvider translationProvider;

  void initialize(BuildContext context) {
    translationProvider = Provider.of<TranslationProvider>(context);
  }

  String? emailValidator(String? email) {
    if (email!.isEmpty) {
      translationProvider.addError(FlippErrors.kNullEmail);
      return '';
    } else if (!regExpEmailValidator.hasMatch(email)) {
      translationProvider.addError(FlippErrors.kInvalidEmail);
      return '';
    }
    return null;
  }

  String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      translationProvider.addError(FlippErrors.kNullPassword);
      return '';
    } else if (password.length < 8) {
      translationProvider.addError(FlippErrors.kShortPassword);
      return '';
    }
    // else if(stricter conditions) {}
    return null;
  }

  String? nameValidator(String? name) {
    if (name!.isEmpty) {
      translationProvider.addError(FlippErrors.kNullName);
      return '';
    }
    return null;
  }
}
