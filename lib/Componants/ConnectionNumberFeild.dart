import 'package:bill_app/Componants/BillsTextContainer.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ConnectionNumberFeild extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const ConnectionNumberFeild({
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
            suffixIcon: IconButton(
              icon: Icon(
                Icons.add_circle_outline_sharp,
                color: secondaryColor,
              ),
              onPressed: () {
                print('Add New Connection');
              },
              color: Colors.black,
              iconSize: 32,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'RobotoSlab',
              fontSize: 15,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
