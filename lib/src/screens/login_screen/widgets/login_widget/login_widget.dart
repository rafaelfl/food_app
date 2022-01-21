import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/widgets/action_button_widget.dart';
import './login_widget_controller.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final LoginWidgetController _controller = LoginWidgetController();

  String _email = const String.fromEnvironment('defaultEmail',
      defaultValue: "email@email.com");
  String _password =
      const String.fromEnvironment('defaultPassword', defaultValue: "123456");

  String _msgErro = "";

  void doLogin() {
    if (_controller.login(_email, _password)) {
      setState(() {
        _msgErro = "";
      });

      debugPrint("Successful login!");

      Navigator.pushNamedAndRemoveUntil(
          context, "/home", ModalRoute.withName('/'));
    } else {
      setState(() {
        _msgErro = "Authentication Error!";
      });

      debugPrint("Erro no login");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                initialValue: _email,
                onChanged: (value) => _email = value,
                decoration: const InputDecoration(
                  labelText: 'Email address',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.visiblePassword),
            const SizedBox(height: 15),
            TextFormField(
              initialValue: _password,
              onChanged: (value) => _password = value,
              decoration: const InputDecoration(
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
            Text(_msgErro,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 20),
            ActionButton(
              "Login",
              onPressed: doLogin,
            ),
          ],
        ),
      ),
    );
  }
}
