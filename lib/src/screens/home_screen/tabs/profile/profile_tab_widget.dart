import 'package:flutter/material.dart';

class ProfileTabWidget extends StatelessWidget {
  const ProfileTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile",
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(color: Colors.black)),
    );
  }
}
