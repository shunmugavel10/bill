import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';

class BillCardList extends StatelessWidget {
  final String title;
  final Widget child;
  final String text;
  final String image2;
  final Function onTap;
  const BillCardList({
    Key key,
    @required this.size,
    this.title,
    this.text,
    this.image2,
    this.onTap,
    this.child,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.22,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 7),
                        child: child,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        child: Text(
                          title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontFamily: 'RobotoSlab',
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Divider(
                    color: greySecColor,
                    height: 3,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      child: Text(
                        text,
                        style: TextStyle(
                            color: greySecColor,
                            fontSize: 16,
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: SvgPicture.asset(
                      image2,
                      height: size.height * 0.037,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
