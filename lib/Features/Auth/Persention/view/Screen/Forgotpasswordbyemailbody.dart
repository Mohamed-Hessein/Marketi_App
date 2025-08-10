import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class Forgotpasswordbyemailbody extends StatelessWidget {
  const Forgotpasswordbyemailbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageManager.Forgot_Password_With_Emai,
              height: 256,
              width: 344.3,
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textAlign: TextAlign.center,
                Textconst.getCodeByEmail,
                style: AppTextSyles.textpopns16color,
              ),
            ),
            SizedBox(height: 22),
            CustomTextFeild(
              labelText: Textconst.emaillabel,
              wigeth: 16,
              height: 16,
              hintText: Textconst.emailTextHint,
              assetImage: AssetImage(ImageManager.emailtextField),
            ),
            SizedBox(height: 22),
            Custtombuttonnext(
              onTap: () {
                Navigator.pushNamed(context, '/Entercodebyemailbody');
              },
              text: 'Send Code',
            ),
          ],
        ),
      ),
    );
  }
}
