import 'package:flutter/material.dart';

import '../colors.dart';

class SignInButton extends StatelessWidget {
  final Widget child;

  const SignInButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
      padding: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.9,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: primaryColor.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 7), // changes position of shadow
        ),
      ], color: primaryColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
