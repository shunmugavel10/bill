import 'package:bill_app/Componants/BillsButton.dart';
import 'package:bill_app/Componants/BillsSubmitButton.dart';
import 'package:bill_app/Componants/ConnectionNumberFeild.dart';
import 'package:bill_app/Componants/RoundedAmountFeild.dart';
import 'package:bill_app/Componants/uploadButton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';

class ClaimBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Container(
          color: primaryColor,
          width: double.infinity,
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: size.height * 0.874,
                  decoration: BoxDecoration(
                    color: greyPriColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 180),
                          child: Text(
                            "AMOUNT TO CLAIM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        RoundedAmountFeild(
                          hintText: '₹',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 200),
                          child: Text(
                            "ADD BILL IMAGE",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.012,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: FDottedLine(
                            color: Colors.black,
                            corner: FDottedLineCorner.all(6.0),
                            child: DottedBorder(
                              radius: Radius.circular(10),
                              color: primaryColor,
                              strokeWidth: 1.2,
                              dashPattern: [10, 5],
                              child: Container(
                                height: size.height * 0.2,
                                color: Colors.white,
                                child: Center(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/cloud-computing (1).svg",
                                      height: size.height * 0.08,
                                      width: size.width * 0.08,
                                      color: greySecColor,
                                    ),
                                    SizedBox(height: size.height * 0),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Drag Files Here or",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'RobotoSlab'),
                                          textAlign: TextAlign.center,
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              print("browse files"),
                                          child: Text(
                                            "Browse Files",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: secondaryColor,
                                                fontSize: 14,
                                                fontFamily: 'RobotoSlab'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size.height * 0),
                                    Text(
                                      "We accept JPG, JPEG and PNG(Less than 1mb)",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily: 'RobotoSlab'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 150),
                          child: Text(
                            "CONNECTION NUMBER",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        ConnectionNumberFeild(
                          hintText: 'Enter your connection number',
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 150),
                          child: Text(
                            "LINKED TRANSACTIONS",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: UploadButton(
                            child: TextButton(
                              onPressed: () {
                                print('Click To link Transaction');
                              },
                              child: Text(
                                "+ Link Your Transaction",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'RobotoSlab',
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                child: BillsButton(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "+ ADD CLAIM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'RobotoSlab'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: BillsSubmitButton(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "SUBMIT CLAIM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoSlab'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "* By proceeding. you declare that the amount entered only \ninclude the part of your bill spent on Mobile expenses",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'RobotoSlab'),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
