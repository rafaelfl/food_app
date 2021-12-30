import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/widgets/dish_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      // faz com que o corpo da tela ocupe o espaço da app bar também
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        // botem os botões de ação na app bar, conforme o template
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        // deixa a app bar transparente
        backgroundColor: Colors.transparent,
        // some com a sombra (já que não tem elevação)
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // exemplo de widget que ocupa um espaço na tela
            Container(
              color: Colors.red,
              child: const SizedBox(
                height: 100,
                child: Center(
                  child: Text("Home page"),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 250),
              child: ListView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                children: [
                  DishButtonWidget(
                    dishName: "Veggie tomato mix",
                    dishPrice: "N1,900",
                    onPressed: () => print("Veggie tomato mix"),
                  ),
                  DishButtonWidget(
                    dishName: "Egg and cucumber",
                    dishPrice: "N1,500",
                    dishImage: "egg_cucmber",
                    onPressed: () => print("Egg and cucumber"),
                  ),
                  DishButtonWidget(
                    dishName: "Fried Chicken m.",
                    dishPrice: "N2,100",
                    dishImage: "fried_chicken",
                    onPressed: () => print("Fried Chicken m."),
                  ),
                  DishButtonWidget(
                    dishName: "Moi-moi and ekpa",
                    dishPrice: "N2,30",
                    dishImage: "moimoi",
                    onPressed: () => print("Moi-moi and ekpa"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
