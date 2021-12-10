import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/widgets/action_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Página de login"),
            ActionButton("Voltar", onPressed: () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}
