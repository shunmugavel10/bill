import 'package:bill_app/Screens/BillClaimScreen/ClaimBody.dart';
import 'package:bill_app/Screens/BillsScreen/billCardScreen.dart';
// import 'package:bill_app/Screens/BillsScreen/BillsScreen.dart';
// import 'package:bill_app/Screens/BillsScreen/billCardbg.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class ClaimScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.07),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
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
            "Add Claim Details",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontFamily: 'RobotoSlab'),
          ),
        ),
      ),
      body: Container(child: ClaimBody()),
    );
  }
}
