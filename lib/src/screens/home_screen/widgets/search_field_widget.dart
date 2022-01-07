import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  const SearchFieldWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _maxWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: _maxWidth * 0.08),
      padding: EdgeInsets.symmetric(
        horizontal: _maxWidth * 0.06,
        vertical: _maxWidth * 0.008,
      ),
      decoration: const ShapeDecoration(
        color: Color(0xFFDFDDDD), // o original era EFEEEE mas não destacava
        shape: StadiumBorder(
          side: BorderSide(
            color: Color(0xFFEFEFEF),
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            color: const Color(0xFF000000),
            size: MediaQuery.of(context).size.width * 0.07,
          ),
          hintText: "Search",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: Theme.of(context).textTheme.headline2?.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.038,
                fontWeight: FontWeight.w500,
                color: const Color(0x88000000),
              ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(
            top: _maxWidth * 0.02,
            bottom: _maxWidth * 0.02,
            left: 0,
            right: _maxWidth * 0.02,
          ),
        ),
      ),
    );
  }
}
