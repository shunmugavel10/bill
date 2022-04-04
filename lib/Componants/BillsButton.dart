import 'package:flutter/material.dart';

import '../colors.dart';

class BillsButton extends StatelessWidget {
  final Widget child;
  const BillsButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      width: size.width * 0.4,
      decoration: BoxDecoration(
          // border: Border.all(color: primaryColor),
          color: primaryColor,
          borderRadius: BorderRadius.circular(2)),
      child: child,
    );
  }
}
