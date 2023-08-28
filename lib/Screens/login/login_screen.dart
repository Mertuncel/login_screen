import 'package:flutter/material.dart';
import 'package:login_screen/Screens/login/companents/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}
