import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/boxgetcode.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupcubit.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupstate.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Entercodebyemailbody extends StatelessWidget {
  const Entercodebyemailbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Signupcubit, Signupstate>(
      listener: (context, state) {
        if (state is AcvtiveResetCodeLSecuess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('suecess')));
          Navigator.pushNamed(context, Approuter.changePass);
        } else if (state is AcvtiveResetCodeError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.ERRmessage)));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                  ImageManager.vrificationCodeWithEmail,
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
                  controler: context.read<Signupcubit>().signUpEmail,
                  labelText: Textconst.emaillabel,
                  wigeth: 16,
                  height: 16,
                  hintText: Textconst.emailTextHint,
                  assetImage: ImageManager.emailIcon,
                ),
                SizedBox(height: 22),
                Pincodefeilds(
                  controller: context.read<Signupcubit>().feildsCOdeController,
                ),
                SizedBox(height: 22),
                state is AcvtiveResetCodeLoading
                    ? CircularProgressIndicator()
                    : Custtombuttonnext(
                        onTap: () {
                          context.read<Signupcubit>().activeCode();
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
      },
    );
  }
}
