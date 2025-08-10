import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/entercodebyemailbody.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

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
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageManager.back_arrow),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: 6),
            Text(
              Textconst.verification_Code,
              style: AppTextSyles.textpopns12Color,
            ),
          ],
        ),
      ),
      body: Entercodebyemailbody(),
    );
  }
}
