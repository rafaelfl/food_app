import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/model/dish.dart';
import 'package:ifood_clone/src/core/widgets/dish_button_widget.dart';

class DishesMenuWidget extends StatelessWidget {
  final List<Dish> dataDishes;

  const DishesMenuWidget({Key? key, required this.dataDishes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: LayoutBuilder(builder: (context, constraints) {
        final double _maxHeight = constraints.maxHeight;

        return Column(
          children: [
            Container(
              height: _maxHeight * 0.1,
              margin: EdgeInsets.only(
                  top: _maxHeight * 0.08, bottom: _maxHeight * 0.06),
              child: TabBar(
                labelColor: const Color(0xFFFA4A0C),
                unselectedLabelColor: const Color(0xFF9A9A9D),
                indicatorColor: const Color(0xFFFA4A0C),
                labelStyle: Theme.of(context).textTheme.headline2?.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: const Color(0x88000000),
                    ),
                tabs: const [
                  Tab(text: 'Foods'),
                  Tab(text: 'Drinks'),
                  Tab(text: 'Snacks'),
                  Tab(text: 'Sauce'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: _maxHeight * 0.02, bottom: _maxHeight * 0.06),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: _maxHeight * 0.68),
                child: TabBarView(
                  children: [
                    ListView.separated(
                      padding:
                          EdgeInsets.symmetric(vertical: _maxHeight * 0.02),
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      itemBuilder: (_, item) {
                        return DishButtonWidget(
                          dishName: dataDishes[item].dishName,
                          dishPrice: dataDishes[item].dishPrice,
                          dishImage: dataDishes[item].dishImage,
                          onPressed: () => debugPrint(
                              "Prato clicado: ${dataDishes[item].dishName}"),
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(
                        width: 40,
                      ),
                      itemCount: dataDishes.length,
                    ),
                    Center(
                        child: Text("Drinks",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.black))),
                    Center(
                        child: Text("Snacks",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.black))),
                    Center(
                        child: Text("Sauce",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.black))),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
