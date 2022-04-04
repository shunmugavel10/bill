import 'package:bill_app/Buttons/signinButtons.dart';
import 'package:bill_app/Componants/AlreadyHaveAnAccount.dart';
import 'package:bill_app/Componants/RoundedInputFeild.dart';
import 'package:bill_app/Componants/RoundedMailFeild.dart';
import 'package:bill_app/Componants/RoundedPasswordFeild.dart';
import 'package:bill_app/Componants/SocialIcon.dart';
import 'package:bill_app/Screens/LogIn/loginScreen.dart';
import 'package:bill_app/Screens/SignUp/OrDivider.dart';
import 'package:bill_app/Screens/SignUp/signupScreen.dart';
import 'package:bill_app/colors.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SigninScreen(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGN UP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: primaryColor,
                    fontFamily: 'Amiri'),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              RoundedInputFeild(
                hintText: "Name",
                onChanged: (value) {},
              ),
              RoundedMailFeild(
                hintText: "Email",
                onChanged: (value) {},
              ),
              RoundedPasswordFeild(
                hintText: "Password",
                onChanged: (value) {},
              ),
              SignInButton(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoSlab',
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              AlreadyHaveAnAccount(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              OrDivider(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: "assets/icons/office (1).svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/search.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
