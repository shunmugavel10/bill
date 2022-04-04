import 'package:bill_app/Componants/Drawer.dart';
import 'package:bill_app/Screens/BillsScreen/BillList.dart';
import 'package:bill_app/colors.dart';
import 'package:flutter/material.dart';

class BillCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.06),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
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
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          // color: greyPriColor,
          decoration: BoxDecoration(
            color: greyPriColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: BillList(),
        ),
      ),
    );
  }
}
