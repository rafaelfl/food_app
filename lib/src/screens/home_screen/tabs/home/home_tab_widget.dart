import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/model/dish.dart';
import 'package:ifood_clone/src/core/model/menu_model.dart';
import 'package:ifood_clone/src/screens/home_screen/tabs/home/home_tab_widget_controller.dart';
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
  final HomeTabWidgetController _controller = HomeTabWidgetController();

  bool loading = true;
  String error = "";

  @override
  void initState() {
    super.initState();

    final MenuModel _menuModel = Provider.of<MenuModel>(context, listen: false);

    _controller.getDishesList().then((List<Dish> dishes) {
      setState(() {
        _menuModel
          ..clearAll()
          ..addAllDishes(dishes);

        error = "";
        loading = false;
      });
    }).catchError((err) {
      debugPrint(err.toString());

      setState(() {
        error = err.toString();
        loading = false;
      });
    });

    _searchController.addListener(() {
      _menuModel.filterMenu(_searchController.text); // menu filter
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

    if (error.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Text(error),
        ),
      );
    }

    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

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
          const Expanded(child: DishesMenuWidget()),
        ],
      ),
    );
  }
}
