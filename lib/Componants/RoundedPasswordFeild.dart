import 'package:bill_app/Componants/TextFieldContainer.dart';
import 'package:flutter/material.dart';

class RoundedPasswordFeild extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const RoundedPasswordFeild({
    Key key,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(fontFamily: 'RobotoSlab'),
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.black,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
