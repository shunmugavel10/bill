import 'package:flutter/material.dart';

import '../colors.dart';

class UploadButton extends StatelessWidget {
  final Widget child;
  const UploadButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      width: size.width * 1,
      decoration: BoxDecoration(
          // border: Border.all(color: secondaryColor),
          color: secondaryColor,
          borderRadius: BorderRadius.circular(5)),
      child: child,
    );
  }
}
