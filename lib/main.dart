import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_clone/src/icabanas_app.dart';

void main() {
  // removida a cor cinza de overlay da status bar do Android
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const ICabanasApp());
}
