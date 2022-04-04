import 'package:bill_app/Buttons/signinButtons.dart';
import 'package:bill_app/Componants/AlreadyHaveAnAccount.dart';
import 'package:bill_app/Componants/RoundedMailFeild.dart';
import 'package:bill_app/Componants/RoundedPasswordFeild.dart';
import 'package:bill_app/Screens/BillsScreen/billCardScreen.dart';
import 'package:bill_app/Screens/SignUp/signupBody.dart';
import 'package:bill_app/colors.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOG IN",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: primaryColor,
              fontFamily: 'Amiri'),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        RoundedMailFeild(
          hintText: "Email",
          onChanged: (value) {},
        ),
        RoundedPasswordFeild(
          onChanged: (value) {},
        ),
        SignInButton(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BillCardScreen();
                  },
                ),
              );
            },
            child: Text(
              'LOG IN',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'RobotoSlab', fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        AlreadyHaveAnAccount(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpBody();
                },
              ),
            );
          },
        )
      ],
    );
  }
}
