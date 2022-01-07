import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/model/dish.dart';
import 'package:ifood_clone/src/screens/home_screen/widgets/app_bar_widget.dart';
import 'package:ifood_clone/src/screens/home_screen/tabs/home_tab_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Dish> dataDishes = [
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget(
          maxWidth: MediaQuery.of(context).size.width,
          onMenuPressed: () => debugPrint('Menu'),
          onCartPressed: () => debugPrint('Cart'),
        ),
        body: TabBarView(
          children: [
            HomeTabWidget(dataDishes: dataDishes),
            Center(
              child: Text("Favoritos",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: Colors.black)),
            ),
            Center(
              child: Text("Perfil",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: Colors.black)),
            ),
            Center(
              child: Text("Últimos\npedidos",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: Colors.black)),
            ),
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width * 0.7,
            MediaQuery.of(context).size.width * 0.2,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.width * 0.2,
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: const TabBar(
                indicator: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33FA4A0C),
                      blurRadius: 10.0,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home, size: 35),
                  ),
                  Tab(icon: Icon(Icons.favorite_border, size: 35)),
                  Tab(icon: Icon(Icons.person_outline, size: 35)),
                  Tab(icon: Icon(Icons.restore, size: 35)),
                ],
                labelColor: Color(0xFFFA4A0C),
                unselectedLabelColor: Color(0xFFADADAF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
