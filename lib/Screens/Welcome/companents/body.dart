import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/Screens/Welcome/companents/background.dart';
import 'package:login_screen/companents/rounded_button.dart';
import 'package:login_screen/constants.dart';

import '../../SignUp/signup_screen.dart';
import '../../login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              color: kPrimaryLightColor,
              textColor: Colors.black,
              text: "SIGN UP",
              press: () {
                 Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SingUpScreen();
                },
              ),
            );
              },
            ),
          ],
        ),
      ),
    );
  }
}
