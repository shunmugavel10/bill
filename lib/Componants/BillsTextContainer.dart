import 'package:flutter/material.dart';

class BillsTextFeildContainer extends StatelessWidget {
  final Widget child;
  const BillsTextFeildContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          // border: Border.all(color: billPrimaryColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)),
      child: child,
    );
  }
}
