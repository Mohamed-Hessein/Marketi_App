import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/boxgetcode.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Entercodebyphonebody extends StatelessWidget {
  const Entercodebyphonebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              ImageManager.verificationCodeWithPhone,
              height: 256,
              width: 344.3,
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textAlign: TextAlign.center,
                Textconst.getCode,
                style: AppTextSyles.textpopns16color,
              ),
            ),
            SizedBox(height: 22),
            Pincodefeilds(),
            SizedBox(height: 22),
            Custtombuttonnext(
              onTap: () {
                Navigator.pushNamed(context, Approuter.changePass);
              },
              text: 'Verify Code',
            ),
            SizedBox(height: 22),
            Text('00:46', style: AppTextSyles.textpopns16Sreachcolor),
            SizedBox(height: 22),
            Text('Resend Code', style: AppTextSyles.textpopns16Sreachcolor),
          ],
        ),
      ),
    );
  }
}
