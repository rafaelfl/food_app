import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/model/dish.dart';

class MenuModel extends ChangeNotifier {
  final List<Dish> _menu = [];
  final List<Dish> _filteredMenu = [];

  MenuModel({List<Dish> dishes = const []}) {
    _menu.addAll(dishes);
    _filteredMenu.addAll(dishes);
  }

  List<Dish> get menu => List.unmodifiable(_menu);
  List<Dish> get filteredMenu => List.unmodifiable(_filteredMenu);

  void filterMenu(String dishName) {
    if (dishName.trim() == "") {
      _filteredMenu
        ..clear()
        ..addAll(_menu);
    } else {
      _filteredMenu
        ..clear()
        ..addAll(_menu.where((dish) =>
            dish.dishName.toLowerCase().contains(dishName.toLowerCase())));
    }

    notifyListeners();
  }

  void addDish(Dish dish) {
    _menu.add(dish);
    _filteredMenu.add(dish);
    notifyListeners();
  }

  void addAllDishes(List<Dish> dishes) {
    _menu.addAll(dishes);
    _filteredMenu.addAll(dishes);
    notifyListeners();
  }

  void clearAll() {
    _menu.clear();
    _filteredMenu.clear();
    notifyListeners();
  }
}
