import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../provider/providers.dart';
import '../size_configuration.dart';
import 'flipp_views_barrel.dart';

class FieldForm extends StatefulWidget {
  const FieldForm({super.key});

  @override
  State<FieldForm> createState() => _FieldFormState();
}

class _FieldFormState extends State<FieldForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email = '';
  String password = '';
  final regExpEmailValidator = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z09]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomFormField(
            onSaved: (value) {
              email = value!;
            },
            onChanged: (value) {
              email = value;
              if (email.isNotEmpty) {
                removeError(FlippErrors.kNullEmail);
              } else if (regExpEmailValidator.hasMatch(email)) {
                removeError(FlippErrors.kInvalidEmail);
              }
            },
            validator: (value) {
              email = value!;
              return emailValidator(email);
            },
          ),
          SizedBox(height: size * 3),
          CustomFormField(
            text: '',
            hintText: 'Enter your password',
            labelText: 'Password',
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            onChanged: (value) {
              password = value;
              if (password.isNotEmpty) {
                removeError(FlippErrors.kNullPassword);
              } else if (password.length > 8) {
                removeError(FlippErrors.kShortPassword);
              }
            },
            onSaved: (value) {
              password = value!;
            },
            validator: (value) {
              password = value!;
              return passwordValidator(value);
            },
            suffixIcon: Icons.lock_rounded,
          ),
          FormFieldErrors(errors: errors),
          SizedBox(height: size * 3),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                final index =
                    Provider.of<FlippStateProvider>(context, listen: false)
                        .currentIndex;
                context.goNamed('home', pathParameters: {
                  'tab': '$index',
                });
              }
            },
            child: Text('Sign In'),
          )
        ],
      ),
    );
  }

  void removeError(error) {
    print('errors remove: ${errors.contains(error)}');
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  String? emailValidator(String? email) {
    if (email!.isEmpty) {
      addError(FlippErrors.kNullEmail);
      print('emailValidator: $errors');
      return '';
    } else if (!regExpEmailValidator.hasMatch(email)) {
      addError(FlippErrors.kInvalidEmail);
      return '';
    }
    return null;
  }

  String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      addError(FlippErrors.kNullPassword);
      return '';
    } else if (password.length < 8) {
      addError(FlippErrors.kShortPassword);
      return '';
    }
    // else if(stricter conditions) {}
    return null;
  }
}
