import 'package:bill_app/Componants/deleteButton.dart';
import 'package:bill_app/Componants/uploadButton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';

class BroadbandBillBody extends StatelessWidget {
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
                  height: size.height * 0.884,
                  decoration: BoxDecoration(
                    color: greyPriColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print("Upload file");
                          },
                          child: DottedBorder(
                            radius: Radius.circular(10),
                            color: primaryColor,
                            strokeWidth: 1.2,
                            dashPattern: [10, 5],
                            child: Container(
                              height: size.height * 0.6,
                              color: Colors.white,
                              child: Center(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/cloud-computing (1).svg",
                                    height: size.height * 0.12,
                                    width: size.width * 0.12,
                                    color: greySecColor,
                                  ),
                                  SizedBox(height: size.height * 0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Drag Files Here or",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'RobotoSlab'),
                                        textAlign: TextAlign.center,
                                      ),
                                      TextButton(
                                        onPressed: () => print("browse files"),
                                        child: Text(
                                          "Browse Files",
                                          style: TextStyle(
                                              color: secondaryColor,
                                              fontSize: 18,
                                              fontFamily: 'RobotoSlab'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0),
                                  Text(
                                    "We accept JPG, JPEG and PNG(Less than 1mb)",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'RobotoSlab'),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        DeleteButton(
                          child: TextButton(
                            onPressed: () {
                              print('Bill Deleted');
                            },
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        UploadButton(
                          child: TextButton(
                            onPressed: () {
                              print('Bill Uploaded');
                            },
                            child: Text(
                              "Upload Bill",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                  fontSize: 18),
                            ),
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
