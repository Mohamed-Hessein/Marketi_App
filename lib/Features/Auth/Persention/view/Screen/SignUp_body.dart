import 'package:flutter/cupertino.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/socialMedia.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageManager.marktia_logo,
              height: 160,
              width: 187.58627319335938,
            ),
            SizedBox(height: 32),
            CustomTextFeild(
              labelText: Textconst.yourNameLabel,
              wigeth: 2,
              height: 2,
              hintText: Textconst.fullName,
              assetImage: AssetImage(ImageManager.name_icon),
            ),
            SizedBox(height: 14),
            CustomTextFeild(
              labelText: Textconst.userNameLabel,
              height: 2,
              wigeth: 2,
              hintText: Textconst.userNameLabel,

              assetImage: AssetImage(ImageManager.user_icon),
            ),
            SizedBox(height: 14),
            CustomTextPhoneFeild(
              labelText: Textconst.phoneNumberLabel,
              height: 40,
              wigeth: 40,
              hintText: Textconst.phoneNumberLabel,
              assetImage: AssetImage(ImageManager.phone_icon),
              SecassetImage: AssetImage(ImageManager.arrow_down),
            ),
            SizedBox(height: 14),

            CustomTextFeild(
              labelText: Textconst.emaillabel,
              height: 16,
              wigeth: 16,
              hintText: Textconst.emailTextHint,
              assetImage: AssetImage(ImageManager.emailtextField),
            ),
            SizedBox(height: 14),
            CustomTextFeild(
              labelText: Textconst.passWordLabel,
              height: 16,
              wigeth: 16,
              hintText: '•••••••••••',

              assetImage: AssetImage(ImageManager.password_icon),
            ),
            SizedBox(height: 14),
            CustomTextFeild(
              labelText: Textconst.confermpassTextfieldLabel,
              height: 16,
              wigeth: 16,
              hintText: '•••••••••••',

              assetImage: AssetImage(ImageManager.password_icon),
            ),
            SizedBox(height: 14),

            Custtombuttonnext(onTap: () {}, text: Textconst.signIn),
            SizedBox(height: 16),
            Text(Textconst.continueWith, style: AppTextSyles.textpopns12Color),
            SizedBox(height: 16),
            SocialMediaButton(),
            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
