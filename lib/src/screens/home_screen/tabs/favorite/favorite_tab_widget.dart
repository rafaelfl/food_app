import 'package:flutter/material.dart';

class FavoriteTabWidget extends StatelessWidget {
  const FavoriteTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favorite",
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(color: Colors.black)),
    );
  }
}
