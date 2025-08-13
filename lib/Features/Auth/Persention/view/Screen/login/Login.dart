import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/login/LoginBody.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Loginbody(),
      appBar: AppBar(leadingWidth: 200, backgroundColor: Colors.white),
    );
  }
}
