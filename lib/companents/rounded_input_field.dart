import 'package:flutter/material.dart';
import 'package:login_screen/companents/text_field_container.dart';
import 'package:login_screen/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    super.key,
    required this.hintext,
    this.icon = Icons.person,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(icon, color: kPrimaryColor),
            hintText: hintext ,
            border: InputBorder.none),
      ),
    );
  }
}
