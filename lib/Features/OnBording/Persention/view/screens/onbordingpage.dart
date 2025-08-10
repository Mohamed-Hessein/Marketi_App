import 'package:flutter/material.dart';
import 'package:marketia/Features/OnBording/Persention/view/screens/onbordenig1.dart';
import 'package:marketia/Features/OnBording/Persention/view/screens/onbording2.dart';
import 'package:marketia/Features/OnBording/Persention/view/screens/onbording3.dart';

class onbordingpage extends StatelessWidget {
  const onbordingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: heigth,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                PageView(
                  controller: controller,
                  children: [
                    onbordenig1(controller: controller),
                    Onbording2(controller: controller),
                    Onbording3(controller: controller),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
