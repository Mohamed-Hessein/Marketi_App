import 'package:flutter/material.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/smooth_widget.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class Onbording2 extends StatelessWidget {
  const Onbording2({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageManager.Onboarding2, height: 256, width: 344.3),
            SizedBox(height: 40),
            SmoothWidget(controller: controller, totalpage: 3),
            SizedBox(height: 24),
            Text(Textconst.easyToBuy, style: AppTextSyles.textpopns20color),
            SizedBox(height: 34),
            Center(
              child: Text(
                Textconst.easydialog,
                style: AppTextSyles.textpopns14color,
              ),
            ),
            SizedBox(height: 81),
            Custtombuttonnext(
              text: Textconst.nextButton,
              onTap: () {
                controller.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
