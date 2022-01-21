import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_clone/src/core/model/menu_model.dart';
import 'package:ifood_clone/src/icabanas_app.dart';
import 'package:provider/provider.dart';

void main() {
  // removida a cor cinza de overlay da status bar do Android
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(ChangeNotifierProvider(
      create: (_) => MenuModel(), // dishes: initialDishes
      child: const ICabanasApp()));
}
