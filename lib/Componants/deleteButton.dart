import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  final Widget child;
  const DeleteButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 15),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      width: size.width * 1,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.red),
          color: Colors.red,
          borderRadius: BorderRadius.circular(5)),
      child: child,
    );
  }
}
