import 'package:flutter/material.dart';

class LastOrdersTabWidget extends StatelessWidget {
  const LastOrdersTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Last\norders",
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(color: Colors.black)),
    );
  }
}
