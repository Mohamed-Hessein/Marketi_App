import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/LoginBody.dart';
import 'package:marketia/core/image_manager/image_manager.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Loginbody(),
      appBar: AppBar(
        leadingWidth: 200,

        backgroundColor: Colors.white,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8),
            Container(
              height: 44,
              width: 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageManager.skip_Button),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
