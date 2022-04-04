import 'dart:ui';

import 'package:bill_app/Componants/deleteButton.dart';
import 'package:bill_app/Screens/LogIn/loginScreen.dart';
import 'package:bill_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              onPressed: () {}),
          title: Text(
            "Settings",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontFamily: 'RobotoSlab'),
          ),
        ),
      ),
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Container(
          color: primaryColor,
          // height: size.height,
          width: double.infinity,
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: size.height * 0.875,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 60, left: 20, right: 20),
                              child: SvgPicture.asset(
                                "assets/icons/router.svg",
                                height: size.height * 0.03,
                                color: secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 10),
                              child: Text(
                                "999999999",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'RobotoSlab',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 90),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "UPLOAD BILL",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'RobotoSlab'),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Divider(
                          color: greySecColor,
                          height: 2,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 20, right: 20),
                            child: SvgPicture.asset(
                              "assets/icons/user.svg",
                              height: size.height * 0.03,
                              color: secondaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Manage Conections",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'RobotoSlab',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 95),
                            // child: SettingsUploadButton(
                            child: GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow (2).svg",
                                height: size.height * 0.02,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Divider(
                          color: greySecColor,
                          height: 2,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 20, right: 20),
                            child: SvgPicture.asset(
                              "assets/icons/cloud-computing (1).svg",
                              height: size.height * 0.03,
                              color: secondaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Uploaded Bills",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'RobotoSlab',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 140),
                            // child: SettingsUploadButton(
                            child: GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow (2).svg",
                                height: size.height * 0.02,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Divider(
                          color: greySecColor,
                          height: 2,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 20, right: 20),
                            child: SvgPicture.asset(
                              "assets/icons/claim.svg",
                              height: size.height * 0.03,
                              color: secondaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Claim Center",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'RobotoSlab',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 152),
                            // child: SettingsUploadButton(
                            child: GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow (2).svg",
                                height: size.height * 0.02,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Divider(
                          color: greySecColor,
                          height: 2,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 20, right: 20),
                            child: SvgPicture.asset(
                              "assets/icons/claim (1).svg",
                              height: size.height * 0.03,
                              color: secondaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Veiw Transactions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'RobotoSlab',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 103),
                            // child: SettingsUploadButton(
                            child: GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow (2).svg",
                                height: size.height * 0.02,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Divider(
                          color: greySecColor,
                          height: 2,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 20, right: 20),
                            child: SvgPicture.asset(
                              "assets/icons/man.svg",
                              height: size.height * 0.03,
                              color: secondaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "User Guide",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'RobotoSlab',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 170),
                            // child: SettingsUploadButton(
                            child: GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow (2).svg",
                                height: size.height * 0.02,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Divider(
                          color: greySecColor,
                          height: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: DeleteButton(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Log Out",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'RobotoSlab',
                                    color: Colors.white),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 240, top: 30),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Powered by ZETA"),
                              // Row(
                              //   children: <Widget>[
                              //     Text('Issued By'),
                              //     SvgPicture.asset(
                              //       "assets/icons/EZ.svg",
                              //       // color: primaryColor,
                              //       height: size.height * 0.09,
                              //     )
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Text('Issued By'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SvgPicture.asset(
                                "assets/icons/EZ.svg",
                                // color: primaryColor,
                                height: size.height * 0.09,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Text(
                            "for Synchrony International Service Private Limited"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
