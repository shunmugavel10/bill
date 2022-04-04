import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: greySecColor),
            // borderRadius: BorderRadius.circular(10),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: 18,
          width: 18,
          // color: secondaryColor,
        ),
      ),
    );
  }
}
