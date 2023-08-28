import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/Screens/SignUp/companents/background.dart';
import 'package:login_screen/Screens/SignUp/companents/social_icon.dart';
import 'package:login_screen/companents/already_have_an_account_acheck.dart';
import 'package:login_screen/companents/rounded_button.dart';
import 'package:login_screen/companents/rounded_input_field.dart';
import 'package:login_screen/companents/rounded_password_field.dart';

import 'or_divider.dart';

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
            "SIGN  UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(hintext: "Your E-mail", onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(text: "SIGN UP", press: () {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(login: false, press: () {}),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
