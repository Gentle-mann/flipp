import 'package:flutter/material.dart';

import '../theme/themes_barrel.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.suffixIcon,
    this.textInputType,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.autocorrect = false,
    required this.obscureText,
  });

  final String hintText;
  final String labelText;
  final IconData suffixIcon;
  final TextInputType? textInputType;
  final ValueChanged<String?>? onSaved;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool autocorrect;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      autocorrect: autocorrect,
      keyboardType: textInputType,
      style: LightTextTheme.lightTextTheme.displaySmall,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
