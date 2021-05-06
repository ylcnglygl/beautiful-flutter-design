import 'package:flutter/material.dart';
import 'package:swiftui/constants.dart';

class ButtonWidget extends StatelessWidget {
  Color color;
  String text;
  ButtonWidget(this.text, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xff9EADFF),
              offset: Offset(-12, 0),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xffFF8FFA),
              offset: Offset(12, 0),
              blurRadius: 10,
            )
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Center(child: Text(text, style: buttonTextStyle)),
      ),
    );
  }
}
