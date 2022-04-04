import 'package:flutter/material.dart';

import '../colors.dart';

class TextFeildContainer extends StatelessWidget {
  final Widget child;
  const TextFeildContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: greyPriColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
