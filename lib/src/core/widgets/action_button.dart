import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  const ActionButton(
    this.text, {
    Key? key,
    required this.onPressed,
    this.foregroundColor = const Color(0xFFF6F6F9),
    this.backgroundColor = const Color(0xFFFA4A0C),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            // side: const BorderSide(color: Colors.red),
          ),
        ),
        alignment: Alignment.center,
      ),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.72,
        height: 40.0,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .button
              ?.copyWith(color: foregroundColor),
        ),
      ),
    );
  }
}
