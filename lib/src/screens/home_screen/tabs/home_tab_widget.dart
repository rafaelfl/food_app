import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/model/dish.dart';
import 'package:ifood_clone/src/screens/home_screen/widgets/dishes_menu_widget.dart';
import 'package:ifood_clone/src/screens/home_screen/widgets/search_field_widget.dart';

class HomeTabWidget extends StatefulWidget {
  final List<Dish> dataDishes;
  const HomeTabWidget({Key? key, required this.dataDishes}) : super(key: key);

  @override
  State<HomeTabWidget> createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  final TextEditingController _searchController = TextEditingController();

  List<Dish> _filteredDishes = [];

  @override
  void initState() {
    super.initState();

    _filteredDishes = [...widget.dataDishes];

    _searchController.addListener(() {
      // debugPrint("Texto a pesquisar: ${_searchController.text}");

      if (_searchController.text.isEmpty) {
        // se não há texto, não filtra
        setState(() {
          _filteredDishes = [...widget.dataDishes];
        });
      } else {
        setState(() {
          // se há texto, cria uma lista com os itens filtrados pelo nome
          _filteredDishes = widget.dataDishes
              .where((dish) => dish.dishName
                  .toLowerCase()
                  .contains(_searchController.text.toLowerCase()))
              .toList();
        });
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
          Expanded(child: DishesMenuWidget(dataDishes: _filteredDishes)),
        ],
      ),
    );
  }
}
