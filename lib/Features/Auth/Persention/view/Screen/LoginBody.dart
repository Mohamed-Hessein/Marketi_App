import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/remeberandforgot.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/socialMedia.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class Loginbody extends StatelessWidget {
  const Loginbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ImageManager.marktia_logo, height: 232, width: 272),
            SizedBox(height: 32),
            CustomTextFeild(
              labelText: Textconst.emaillabel,
              wigeth: 16,
              height: 16,
              hintText: Textconst.emailTextHint,
              assetImage: AssetImage(ImageManager.emailtextField),
            ),
            SizedBox(height: 14),
            CustomTextFeild(
              height: 16,
              wigeth: 16,
              hintText: '•••••••••••',
              labelText: Textconst.passWordLabel,
              assetImage: AssetImage(ImageManager.password_icon),
            ),
            RowRememberandforget(),
            SizedBox(height: 20),
            Custtombuttonnext(onTap: () {}, text: Textconst.signIn),
            SizedBox(height: 16),
            Text(Textconst.continueWith, style: AppTextSyles.textpopns12Color),
            SizedBox(height: 16),
            SocialMediaButton(),
            SizedBox(height: 14),
            Textaryoueloginorsign(or: 'register?'),
          ],
        ),
      ),
    );
  }
}

class Textaryoueloginorsign extends StatelessWidget {
  const Textaryoueloginorsign({super.key, required this.or});
  final String or;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Textconst.didintForGetToLoginText,
          style: AppTextSyles.textpopns12Color,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: Text(or, style: AppTextSyles.textpopns12forgotColor),
        ),
      ],
    );
  }
}
