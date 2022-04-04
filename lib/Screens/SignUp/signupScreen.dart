import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  final Widget child;

  const SigninScreen({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
        ],
      ),
    );
  }
}
