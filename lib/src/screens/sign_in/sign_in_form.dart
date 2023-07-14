import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../provider/providers.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import '../../form_validators.dart';
import '../../provider/translation_provider.dart';
import '../../size_configuration.dart';
import '../../views/custom_button.dart';
import '../../views/flipp_views_barrel.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    FormValidators().initialize(context);
    final formValidators = FormValidators();

    final size = SizeConfiguration.defaultSize;
    return Form(
      key: _formKey,
      child: Consumer<TranslationProvider>(
          builder: (context, flippStateProvider, child) {
        final errors = flippStateProvider.errors;
        return Column(
          children: [
            CustomFormField(
              onSaved: (value) {
                email = value!;
              },
              onChanged: (value) {
                email = value;
                if (email.isNotEmpty) {
                  flippStateProvider.removeError(FlippErrors.kNullEmail);
                }
                if (formValidators.regExpEmailValidator.hasMatch(email)) {
                  flippStateProvider.removeError(FlippErrors.kInvalidEmail);
                }
              },
              validator: (value) {
                email = value!;
                return formValidators.emailValidator(email);
              },
              suffixIcon: Icons.email_rounded,
              textInputType: TextInputType.emailAddress,
              obscureText: false,
              hintText: 'Enter your email',
              labelText: 'Email',
            ),
            SizedBox(height: size * 3),
            CustomFormField(
              hintText: 'Enter your password',
              labelText: 'Password',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              onChanged: (value) {
                password = value;
                if (password.isNotEmpty) {
                  flippStateProvider.removeError(FlippErrors.kNullPassword);
                }
                if (password.length > 8) {
                  flippStateProvider.removeError(FlippErrors.kShortPassword);
                }
              },
              onSaved: (value) {
                password = value!;
              },
              validator: (value) {
                password = value!;
                return formValidators.passwordValidator(value);
              },
              suffixIcon: Icons.visibility_rounded,
            ),
            FormFieldErrors(errors: errors),
            SizedBox(height: size * 3),
            CustomButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Provider.of<FlippStateProvider>(context, listen: false)
                      .signIn('username', 'password');
                  //context.goNamed('onboarding');
                }
                print('email: $email and password: $password');
              },
              text: 'Sign In',
            ),
          ],
        );
      }),
    );
  }
}
