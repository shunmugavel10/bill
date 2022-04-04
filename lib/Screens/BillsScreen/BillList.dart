import 'package:bill_app/Screens/BillClaimScreen/ClaimScreen.dart';
import 'package:bill_app/Screens/BillsScreen/BillCardList.dart';
import 'package:bill_app/Screens/BroadBand/BroadBandScreen.dart';
import 'package:bill_app/Screens/InternetBills/InternetBillScreen.dart';
import 'package:bill_app/Screens/MobileBills/mobileBody.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class BillList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 1.01,
      decoration: BoxDecoration(
        color: greyPriColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                BillCardList(
                  child: Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Colors.grey[600],
                  ),
                  title: 'Mobile Bills',
                  text:
                      "To upload Mobile Bills expenses \nfor reimbursement approvals",
                  image2: "assets/icons/right-chevron.svg",
                  size: size,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MobileBody();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                BillCardList(
                  child: Icon(
                    Icons.cast_rounded,
                    color: Colors.grey[600],
                  ),
                  title: 'Internet Bills',
                  text:
                      "To upload Internet Bills expenses \nfor reimbursement approvals",
                  image2: "assets/icons/right-chevron.svg",
                  size: size,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return InternetBillScreen();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                BillCardList(
                  child: Icon(
                    Icons.computer_rounded,
                    color: Colors.grey[600],
                  ),
                  title: 'Broandband Bills',
                  text:
                      "To upload Broadband Bills expenses\nfor reimbursement approvals",
                  image2: "assets/icons/right-chevron.svg",
                  size: size,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BroadBandBillScreen();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                BillCardList(
                  child: Icon(
                    Icons.account_balance_rounded,
                    color: Colors.grey[600],
                  ),
                  title: 'Other Bills',
                  text:
                      "To upload Others Bills expenses \nfor reimbursement approvals",
                  image2: "assets/icons/right-chevron.svg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ClaimScreen();
                        },
                      ),
                    );
                  },
                  size: size,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
