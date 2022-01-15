import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/model/dish.dart';
import 'package:ifood_clone/src/core/model/menu_model.dart';
import 'package:ifood_clone/src/screens/home_screen/widgets/dishes_menu_widget.dart';
import 'package:ifood_clone/src/screens/home_screen/widgets/search_field_widget.dart';
import 'package:provider/provider.dart';

class HomeTabWidget extends StatefulWidget {
  const HomeTabWidget({Key? key}) : super(key: key);

  @override
  State<HomeTabWidget> createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  final TextEditingController _searchController = TextEditingController();

  // List<Dish> _filteredDishes = [];

  @override
  void initState() {
    super.initState();

    final MenuModel _menuModel = Provider.of<MenuModel>(context, listen: false);

    // _filteredDishes = [..._menuModel.menu];

    _searchController.addListener(() {
      // debugPrint("Texto a pesquisar: ${_searchController.text}");

      if (_searchController.text.isEmpty) {
        // se não há texto, não filtra
        // setState(() {
        //   _filteredDishes = [..._menuModel.menu];
        // });
        _menuModel.filterMenu("");
      } else {
        // setState(() {
        //   // se há texto, cria uma lista com os itens filtrados pelo nome
        //   _filteredDishes = _menuModel.menu
        //       .where((dish) => dish.dishName
        //           .toLowerCase()
        //           .contains(_searchController.text.toLowerCase()))
        //       .toList();
        // });
        _menuModel.filterMenu(_searchController.text); // filtra o menu
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _maxWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          left: _maxWidth * 0.1, right: _maxWidth * 0.1, top: _maxWidth * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Delicious\nfood for you",
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.085,
                  color: const Color(0xFF000000),
                  height: 1.2,
                ),
          ),
          SearchFieldWidget(controller: _searchController),
          Expanded(child: DishesMenuWidget()),
        ],
      ),
    );
  }
}
