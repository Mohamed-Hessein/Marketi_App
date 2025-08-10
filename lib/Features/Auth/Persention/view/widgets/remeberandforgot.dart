import 'package:flutter/cupertino.dart';
import 'package:marketia/core/Textconst/textconst.dart';
import 'package:marketia/core/image_manager/image_manager.dart';
import 'package:marketia/core/textstyles/styles.dart';

class RowRememberandforget extends StatelessWidget {
  const RowRememberandforget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10),
      child: Row(
        children: [
          Image.asset(ImageManager.check_icon, height: 18, width: 18),
          SizedBox(width: 1.5),
          Text(Textconst.rememberMe, style: AppTextSyles.textpopns12Color),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/forgtepass');
              },
              child: Text(
                Textconst.forgetPass,
                style: AppTextSyles.textpopns12forgotColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
