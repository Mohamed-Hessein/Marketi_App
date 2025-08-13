import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/smooth_widget.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Onbording3 extends StatelessWidget {
  const Onbording3({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageManager.onBoarding3,
                width: 258.7137451171875,
                height: 256,
              ),
              SizedBox(height: 40),
              SmoothWidget(controller: controller, totalpage: 3),
              SizedBox(height: 24),
              Text(
                Textconst.wonderUserText,
                style: AppTextSyles.textpopns20color,
              ),
              SizedBox(height: 44),
              Text(
                Textconst.wonderdialog,
                style: AppTextSyles.textpopns14color,
              ),
              SizedBox(height: 103),
              Custtombuttonnext(
                text: Textconst.nextButton,
                onTap: () {
                  controller.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                  Navigator.pushReplacementNamed(context, Approuter.logIn);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
