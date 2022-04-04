import 'package:flutter/material.dart';

import '../colors.dart';

class BillsSubmitButton extends StatelessWidget {
  final Widget child;
  const BillsSubmitButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 17),
      padding: EdgeInsets.symmetric(vertical: 0),
      width: size.width * 0.4,
      decoration: BoxDecoration(
          // border: Border.all(color: secondaryColor),
          color: secondaryColor,
          borderRadius: BorderRadius.circular(2)),
      child: child,
    );
  }
}
