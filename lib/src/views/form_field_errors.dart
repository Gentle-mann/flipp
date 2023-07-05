import 'package:flutter/material.dart';

class FormFieldErrors extends StatelessWidget {
  const FormFieldErrors({super.key, required this.errors});
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    print('errors are : $errors');
    return Column(children: [
      ...List.generate(
        errors.length,
        (index) => Text(
          errors[index],
        ),
      ),
    ]);
  }
}
