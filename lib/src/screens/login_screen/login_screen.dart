import 'package:flutter/material.dart';
import 'package:ifood_clone/src/screens/login_screen/widgets/login_widget/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;

    // detecção se o teclado está aberto
    final bool _isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          title: FractionallySizedBox(
            widthFactor: 0.4,
            child: Image.asset("assets/images/logo.png"),
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,

          // caso o teclado esteja aberto, reduz o tamanho da barra
          toolbarHeight: _isKeyboardOpen ? _height * 0.2 : _height * 0.41,
          shadowColor: const Color(0xFFE7E7E7),
          bottom: const TabBar(
            indicatorColor: Color(0xFFFA4A0C),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(child: Text("Login", style: TextStyle(color: Colors.black))),
              Tab(
                  child:
                      Text("Sign-up", style: TextStyle(color: Colors.black))),
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(children: [
            const LoginWidget(),
            Container(color: Colors.yellow),
          ]),
        ),
      ),
    );
  }
}
