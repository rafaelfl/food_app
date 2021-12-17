import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/widgets/action_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          title: FractionallySizedBox(
            widthFactor: 0.4,
            child: Image.asset("assets/images/logo.png"),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          toolbarHeight: _height * 0.41,
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
            Container(color: Colors.blue),
            Container(color: Colors.yellow),
          ]),
        ),
      ),
    );
  }
}
