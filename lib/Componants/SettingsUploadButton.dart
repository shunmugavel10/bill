import 'package:flutter/material.dart';

import '../colors.dart';

class SettingsUploadButton extends StatelessWidget {
  final Widget child;
  const SettingsUploadButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 13),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      width: size.width * 0.35,
      decoration: BoxDecoration(
          border: Border.all(color: secondaryColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)),
      child: child,
    );
  }
}
