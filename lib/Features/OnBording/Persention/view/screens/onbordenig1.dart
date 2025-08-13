import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/smooth_widget.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class onbordenig1 extends StatelessWidget {
  const onbordenig1({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageManager.slidingImage1,
              width: 344.0304870605469,
              height: 256,
            ),
            SizedBox(height: 40),
            SmoothWidget(controller: controller, totalpage: 3),
            SizedBox(height: 24),
            Text(Textconst.welcome, style: AppTextSyles.textpopns20color),
            SizedBox(height: 34),
            Text(
              textAlign: TextAlign.center,
              Textconst.welcomdialog,
              style: AppTextSyles.textpopns14color,
            ),
            SizedBox(height: 34),
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
