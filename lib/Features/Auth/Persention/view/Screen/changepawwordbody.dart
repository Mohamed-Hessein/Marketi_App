import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class Changepawwordbody extends StatelessWidget {
  const Changepawwordbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageManager.Illustration_Create_New_Password,
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
            CustomTextFeild(
              height: 16,
              wigeth: 16,
              hintText: '•••••••••••',
              labelText: Textconst.passWordLabel,
              assetImage: AssetImage(ImageManager.password_icon),
            ),
            SizedBox(height: 14),
            CustomTextFeild(
              height: 16,
              wigeth: 16,
              hintText: '•••••••••••',
              labelText: Textconst.confermpassTextfieldLabel,
              assetImage: AssetImage(ImageManager.password_icon),
            ),
            SizedBox(height: 22),
            Custtombuttonnext(
              onTap: () {
                Navigator.pushNamed(context, '/congra');
              },
              text: Textconst.saved_pass,
            ),
          ],
        ),
      ),
    );
  }
}
