import 'package:flutter/material.dart';
import 'package:swiftui/constants.dart';

class TextFieldWidget extends StatelessWidget {
  String text;
  String icon;
  int color;
  AnimationController _controller;
  TextFieldWidget(this.text, this.icon, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: []),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          maxLines: 5,
          minLines: 1,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            icon: Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Color(0xff1A123E).withOpacity(0.8),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.white.withOpacity(0.1)),
              ),
              child: Image.asset('assets/$icon'),
            ),
            border: InputBorder.none,
            hintText: text,
            hintStyle: informationTextStyle,
          ),
          onChanged: (newText) {
            print(newText);
          },
        ),
      ),
    );
  }
}
