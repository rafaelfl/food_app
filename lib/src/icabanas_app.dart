import 'package:flutter/material.dart';
import 'package:ifood_clone/src/screens/get_started/get_started_screen.dart';

class ICabanasApp extends StatelessWidget {
  const ICabanasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "iCabañas",
      home: const GetStartedScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFFFA4A0C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "SFPro",
            fontSize: 62,
            height: 0.8,
            fontWeight: FontWeight.w800,
            color: Color(0xFFFFFFFF),
          ),
          button: TextStyle(
            fontFamily: "SFPro",
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Color(0xFFF6F6F9),
          ),
        ),
      ),
    );
  }
}
