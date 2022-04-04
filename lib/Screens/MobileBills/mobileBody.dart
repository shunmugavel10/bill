import 'package:bill_app/Screens/MobileBills/MobileBill.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class MobileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.06),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              onPressed: () => print("Drawer clicked")),
          title: Text(
            "Mobile Bills",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontFamily: 'RobotoSlab'),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.white,
                ),
                onPressed: () => print("Notification Clicked")),
            IconButton(
                icon: Icon(
                  Icons.card_giftcard_rounded,
                  color: Colors.white,
                ),
                onPressed: () => print("Notification Clicked")),
          ],
        ),
      ),
      body: Container(
        child: MobileBill(),
      ),
    );
  }
}
