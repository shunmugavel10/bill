import 'package:flutter/material.dart';

import 'TextFieldContainer.dart';

class RoundedInputFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFeild({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            hintStyle: TextStyle(fontFamily: 'RobotoSlab'),
            border: InputBorder.none),
      ),
    );
  }
}
