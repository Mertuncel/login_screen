import 'package:flutter/material.dart';
import 'package:login_screen/Screens/SignUp/companents/body.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}


