import 'package:bill_app/Screens/BillsScreen/billCardScreen.dart';
// import 'package:bill_app/Screens/BillsScreen/billCardbg.dart';
import 'package:bill_app/Screens/InternetBills/InternetBillBody.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class InternetBillScreen extends StatelessWidget {
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BillCardScreen();
                    },
                  ),
                );
              }),
          title: Text(
            "Internet Bills",
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
        child: InternetBillBody(),
      ),
    );
  }
}
