import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class BillIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const BillIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(7),

          // decoration: BoxDecoration(
          //     border: Border.all(width: 2, color: billSecondaryColor),
          //     shape: BoxShape.circle),
          child: SvgPicture.asset(
            iconSrc,
            height: 55,
            width: 50,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
