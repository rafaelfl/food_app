import 'package:flutter/material.dart';
import 'package:ifood_clone/src/core/widgets/action_button_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFF4B3A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.12),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 37,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.12),
                child: Text(
                  "Food for Everyone",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset("assets/images/toy_faces.png", width: screenWidth),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "Get Started",
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFFF460A),
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
