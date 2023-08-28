import 'package:flutter/material.dart';
import 'package:login_screen/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function () press;
  final Color color, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: press,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(29),
            ),
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            width: size.width * 0.8,
            height: 50,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ));
  }
}
