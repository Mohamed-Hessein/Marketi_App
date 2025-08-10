import 'package:flutter/cupertino.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class Forgotpasswordbody extends StatelessWidget {
  const Forgotpasswordbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageManager.Forgot_Password_With_Phone,
              height: 256,
              width: 344.3,
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textAlign: TextAlign.center,
                Textconst.getCodeByPhoneNumber,
                style: AppTextSyles.textpopns16color,
              ),
            ),
            SizedBox(height: 22),
            CustomTextPhoneFeild(
              labelText: Textconst.phoneNumberLabel,
              height: 40,
              wigeth: 40,
              hintText: Textconst.phoneNumberLabel,
              assetImage: AssetImage(ImageManager.phone_icon),
              SecassetImage: AssetImage(ImageManager.arrow_down),
            ),
            SizedBox(height: 22),
            Custtombuttonnext(
              onTap: () {
                Navigator.pushNamed(context, '/Entercodebyphonebody');
              },
              text: 'Send Code',
            ),
            SizedBox(height: 22),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/forgtepassmail');
              },
              child: Text(
                Textconst.tryAnthorway,
                style: AppTextSyles.textpopns16bcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
