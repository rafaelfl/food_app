import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double maxWidth;
  final VoidCallback onMenuPressed;
  final VoidCallback onCartPressed;

  const AppBarWidget(
      {Key? key,
      required this.maxWidth,
      required this.onMenuPressed,
      required this.onCartPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: onMenuPressed,
      ),
      leadingWidth: maxWidth * 0.28,
      actions: [
        SizedBox(
          width: maxWidth * 0.28,
          child: IconButton(
            icon:
                const Icon(Icons.shopping_cart_outlined, color: Colors.black38),
            onPressed: onCartPressed,
          ),
        ),
      ],
      // deixa a app bar transparente
      backgroundColor: Colors.transparent,
      // some com a sombra (já que não tem elevação)
      elevation: 0,
      toolbarHeight: kToolbarHeight + (maxWidth * 0.075),
      // após colocar o fundo transparente, os ícones da status bar
      // ficaram brancos. Para garantir que eles fiquem pretos,
      // é necessário fazer setar o icon brightness
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (maxWidth * 0.075));
}
