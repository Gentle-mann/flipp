import 'package:flipp/src/constants.dart';
import 'package:flipp/src/provider/providers.dart';
import 'package:provider/provider.dart';

class FormValidators {
  final regExpEmailValidator = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z09]+\.[a-zA-Z]+");

  late final TranslationProvider flippStateProvider;
  void initialize(context) {
    flippStateProvider = Provider.of<TranslationProvider>(context);
  }

  String? emailValidator(String? email) {
    if (email!.isEmpty) {
      flippStateProvider.addError(FlippErrors.kNullEmail);
      return '';
    } else if (!regExpEmailValidator.hasMatch(email)) {
      flippStateProvider.addError(FlippErrors.kInvalidEmail);
      return '';
    }
    return null;
  }

  String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      flippStateProvider.addError(FlippErrors.kNullPassword);
      return '';
    } else if (password.length < 8) {
      flippStateProvider.addError(FlippErrors.kShortPassword);
      return '';
    }
    // else if(stricter conditions) {}
    return null;
  }

  String? nameValidator(String? name) {
    if (name!.isEmpty) {
      flippStateProvider.addError(FlippErrors.kNullName);
      return '';
    }
    return null;
  }
}
