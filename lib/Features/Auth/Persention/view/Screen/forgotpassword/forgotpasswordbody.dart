import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Forgotpasswordbody extends StatelessWidget {
  const Forgotpasswordbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              ImageManager.forgotPasswordWithPhone,
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
              height: 27,
              wigeth: 27,
              hintText: Textconst.phoneNumberLabel,
              assetImage: ImageManager.phoneIcon,
              SecassetImage: ImageManager.arrowDown,
            ),
            SizedBox(height: 22),
            Custtombuttonnext(
              onTap: () {
                Navigator.pushNamed(context, Approuter.forgotPasswordPhone);
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
