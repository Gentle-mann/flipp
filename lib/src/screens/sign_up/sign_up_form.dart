import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../form_validators.dart';
import '../../provider/translation_provider.dart';
import '../../size_configuration.dart';
import '../../views/custom_button.dart';
import '../../views/flipp_views_barrel.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    final formValidators = FormValidators();
    final size = SizeConfiguration.defaultSize;
    return Consumer<TranslationProvider>(
        builder: (context, flippStateProvider, child) {
      return Column(
        children: [
          CustomFormField(
            suffixIcon: Icons.person_rounded,
            obscureText: false,
            hintText: 'Enter your name',
            labelText: 'Name',
            onChanged: (value) {
              name = value;
              if (name.isNotEmpty) {
                flippStateProvider.removeError(FlippErrors.kNullName);
              }
            },
            onSaved: (value) {
              name = value!;
            },
            validator: (value) {
              name = value!;
              return formValidators.nameValidator(name);
            },
          ),
          SizedBox(height: size * 3),
          CustomFormField(
            suffixIcon: Icons.email_rounded,
            obscureText: false,
            hintText: 'Enter your email',
            labelText: 'Email',
            onChanged: (value) {
              email = value;
              if (email.isNotEmpty) {
                flippStateProvider.removeError(FlippErrors.kNullEmail);
              } else if (formValidators.regExpEmailValidator.hasMatch(email)) {
                flippStateProvider.removeError(FlippErrors.kInvalidEmail);
              }
            },
            onSaved: (value) {
              email = value!;
            },
            validator: (value) {
              return formValidators.emailValidator(email);
            },
          ),
          SizedBox(height: size * 3),
          CustomFormField(
            suffixIcon: Icons.visibility_off_rounded,
            obscureText: false,
            hintText: 'Enter a password',
            labelText: 'Password',
            onChanged: (value) {
              password = value;
              if (password.isNotEmpty) {
                flippStateProvider.removeError(FlippErrors.kNullPassword);
              } else if (password.length > 8) {
                flippStateProvider.removeError(FlippErrors.kShortPassword);
              }
            },
            onSaved: (value) {
              password = value!;
            },
            validator: (value) {
              return formValidators.passwordValidator(password);
            },
          ),
          SizedBox(height: size * 3),
          CustomFormField(
            suffixIcon: Icons.visibility_off_rounded,
            obscureText: false,
            hintText: 'Confirm your password',
            labelText: 'Confirm Password',
            onChanged: (value) {
              confirmPassword = value;
              if (confirmPassword == password) {
                flippStateProvider.removeError(FlippErrors.kMatchPassword);
              }
            },
            onSaved: (value) {
              confirmPassword = value!;
            },
            validator: (value) {
              if (confirmPassword != password) {
                flippStateProvider.addError(FlippErrors.kMatchPassword);
                return '';
              }
              return null;
            },
          ),
          SizedBox(height: size * 4),
          CustomButton(
            onPressed: () {
              // if() {}
            },
            text: 'Sign Up',
          ),
        ],
      );
    });
  }
}
