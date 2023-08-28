import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/Screens/login/companents/background.dart';

import 'package:login_screen/companents/rounded_button.dart';
import 'package:login_screen/companents/rounded_input_field.dart';
import 'package:login_screen/companents/rounded_password_field.dart';

import '../../../companents/already_have_an_account_acheck.dart';
import '../../SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "LOGİN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            width: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintext: "Your E-mail",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (valur) {},
          ),
          RoundedButton(text: "LOGİN", press: () {}),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
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
    );
  }
}
