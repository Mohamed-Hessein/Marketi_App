import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/getcode/entercodebyemailbody.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Entercodebyemail extends StatelessWidget {
  const Entercodebyemail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
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
            SizedBox(width: 6),
            Text(
              Textconst.verificationCode,
              style: AppTextSyles.textpopns12Color,
            ),
          ],
        ),
      ),
      body: Entercodebyemailbody(),
    );
  }
}
