import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_clone/src/core/model/dish.dart';
import 'package:ifood_clone/src/core/model/menu_model.dart';
import 'package:ifood_clone/src/icabanas_app.dart';
import 'package:provider/provider.dart';

void main() {
  // removida a cor cinza de overlay da status bar do Android
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  final List<Dish> initialDishes = [
    Dish(
      dishName: "Veggie tomato mix",
      dishPrice: "N1,900",
      dishImage: "veggie_tomato",
    ),
    Dish(
      dishName: "Egg and cucumber",
      dishPrice: "N1,500",
      dishImage: "egg_cucmber",
    ),
    Dish(
      dishName: "Fried Chicken m.",
      dishPrice: "N2,100",
      dishImage: "fried_chicken",
    ),
    Dish(
      dishName: "Moi-moi and ekpa",
      dishPrice: "N2,30",
      dishImage: "moimoi",
    )
  ];

  runApp(ChangeNotifierProvider(
      create: (_) => MenuModel(dishes: initialDishes),
      child: const ICabanasApp()));
}
