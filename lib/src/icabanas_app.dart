import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_clone/src/screens/get_started/get_started_screen.dart';
import 'package:ifood_clone/src/screens/home_screen/home_screen.dart';
import 'package:ifood_clone/src/screens/login_screen/login_screen.dart';

class ICabanasApp extends StatelessWidget {
  const ICabanasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "iCabañas",
      // removido o banner de debug da aplicação
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const GetStartedScreen(),
        "/login": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
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
          // formatação do texto do input
          subtitle1: TextStyle(
            fontFamily: "SFPro",
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000),
            decoration: TextDecoration.none,
          ),
        ),

        // cor do cursor da caixa de texto - iOS
        cupertinoOverrideTheme:
            const CupertinoThemeData(primaryColor: Color(0xFFFA4A0C)),
        // cor do cursor da caixa de texto - Android, Fuchsia, etc.
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFFA4A0C),
          selectionColor: Color(0xFFFA4A0C),
          selectionHandleColor: Color(0xFFFA4A0C),
        ),

        // remover o padding do TextButton
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
          ),
        ),

        // incluído o tema dos labels das caixas de texto da aplicação
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
              fontFamily: "SFPro",
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xFF919191)),
          // cor da linha da caixa de texto
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF000000))),
          // cor da linha da caixa de texto quando estiver selecionada
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFA4A0C))),
        ),
      ),
    );
  }
}
