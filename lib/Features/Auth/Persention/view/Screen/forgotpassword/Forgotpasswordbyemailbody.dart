import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupcubit.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupstate.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Forgotpasswordbyemailbody extends StatelessWidget {
  const Forgotpasswordbyemailbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Signupcubit, Signupstate>(
      listener: (context, state) {
        if (state is ResetCodeSecuss) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('secuss')));
          Navigator.pushNamed(context, Approuter.enterCode);
        } else if (state is ResetCodeError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.ERRmessage)));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 44),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                  ImageManager.forgotPasswordWithEmai,
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
                  controler: context.read<Signupcubit>().signUpEmail,
                  labelText: Textconst.emaillabel,
                  wigeth: 16,
                  height: 16,
                  hintText: Textconst.emailTextHint,
                  assetImage: ImageManager.emailIcon,
                ),
                SizedBox(height: 22),
                state is ResetCodeLoading
                    ? CircularProgressIndicator()
                    : Custtombuttonnext(
                        onTap: () {
                          context.read<Signupcubit>().resetcode();
                          // Navigator.pushNamed(context, Approuter.enterCode);
                        },
                        text: 'Send Code',
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
