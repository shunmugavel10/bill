import 'package:bill_app/Componants/BillsTextContainer.dart';
import 'package:flutter/material.dart';

class RoundedAmountFeild extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedAmountFeild({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BillsTextFeildContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'RobotoSlab',
                fontSize: 22,
                fontWeight: FontWeight.w700),
            border: InputBorder.none),
      ),
    );
  }
}
