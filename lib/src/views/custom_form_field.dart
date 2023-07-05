import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.text = '',
    this.hintText = 'Enter your email',
    this.labelText = 'Email',
    this.suffixIcon = Icons.email_rounded,
    this.textInputType = TextInputType.emailAddress,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.autocorrect = false,
    this.obscureText = false,
  });
  final String? text;
  final String hintText;
  final String labelText;
  final IconData suffixIcon;
  final TextInputType textInputType;
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
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
