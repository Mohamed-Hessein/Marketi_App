import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/boxgetcode.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class Entercodebyemailbody extends StatelessWidget {
  const Entercodebyemailbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageManager.Verification_Code_With_Email,
              height: 256,
              width: 344.3,
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textAlign: TextAlign.center,
                Textconst.getCodeE,
                style: AppTextSyles.textpopns16color,
              ),
            ),
            SizedBox(height: 22),
            Pincodefeilds(),
            SizedBox(height: 22),
            Custtombuttonnext(
              onTap: () {
                Navigator.pushNamed(context, '/createnewpassword');
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
