import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';

class SplachBody extends StatelessWidget {
  const SplachBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      onFinish: (direction) {
        Navigator.pushReplacementNamed(context, Approuter.onBording);
      },
      child: Center(
        child: Image.asset(
          ImageManager.marktiaLogo,
          height: 256,
          width: 300.17,
        ),
      ),
    );
  }
}
