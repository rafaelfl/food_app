import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/widgets/action_button_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
                decoration: InputDecoration(
                  labelText: 'Email address',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.visiblePassword),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              autocorrect: false,
              enableSuggestions: false,
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => false,
              child: const Text(
                "Forgot password?",
                style: TextStyle(
                  color: Color(0xFFFA4A0C),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ActionButton(
              "Login",
              onPressed: () => false,
            ),
          ],
        ),
      ),
    );
  }
}
