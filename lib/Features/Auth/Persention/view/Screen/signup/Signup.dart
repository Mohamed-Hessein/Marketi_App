import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/signup/SignUp_body.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: 48,
                width: 48,
                child: SvgPicture.asset(ImageManager.backArrow),
              ),
            ),
          ],
        ),
      ),
      body: SignupBody(),
    );
  }
}
