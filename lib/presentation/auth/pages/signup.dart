import 'package:e_commerce/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce/presentation/auth/pages/enter_password.dart';
import 'package:e_commerce/presentation/auth/pages/forgot_password.dart';
import 'package:e_commerce/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20),
            _firstNameField(context),
            const SizedBox(height: 20), _lastNameField(context),
            const SizedBox(height: 20), _emailField(context),
            const SizedBox(height: 20), _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      "Create Account ",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'First Name'),
    );
  }


   Widget _lastNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Last Name'),
    );
  }


   Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Email Address'),
    );
  }


   Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Password'),
    );
  }





  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const EnterPasswordPage());
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
          const TextSpan(text: 'Do you have an account? '),
          TextSpan(
              text: 'Sigin ',
              recognizer: TapGestureRecognizer()..onTap = () {
                AppNavigator.pushReplacement(context, SigninPage());
              },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ]));
  }
}
