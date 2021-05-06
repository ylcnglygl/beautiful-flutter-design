import 'package:flutter/material.dart';

class ContainerDivider extends StatelessWidget {
  const ContainerDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Container(
        height: 0.5,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
      ),
    );
  }
}
