import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/remeberandforgot.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupcubit.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupstate.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Signupcubit, Signupstate>(
      listener: (context, state) {
        if (state is SignupSecuss) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state!.message)));
          Navigator.pushNamed(context, Approuter.logIn);
        } else if (state is SignupError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state!.ERRmessage)));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  ImageManager.marktiaLogo,
                  height: 160,
                  width: 187.58627319335938,
                ),
                SizedBox(height: 32),
                CustomTextFeild(
                  controler: context.read<Signupcubit>().signUpName,
                  labelText: Textconst.yourNameLabel,
                  wigeth: 2,
                  height: 2,
                  hintText: Textconst.fullName,
                  assetImage: ImageManager.nameIcon,
                ),
                SizedBox(height: 14),

                SizedBox(height: 14),
                CustomTextPhoneFeild(
                  controler: context.read<Signupcubit>().signUpPhoneNumber,
                  labelText: Textconst.phoneNumberLabel,
                  height: 27,
                  wigeth: 27,
                  hintText: Textconst.phoneNumberLabel,
                  assetImage: ImageManager.phoneIcon,
                  SecassetImage: ImageManager.arrowDown,
                ),
                SizedBox(height: 14),

                CustomTextFeild(
                  controler: context.read<Signupcubit>().signUpEmail,
                  labelText: Textconst.emaillabel,
                  height: 3,
                  wigeth: 3,
                  hintText: Textconst.emailTextHint,
                  assetImage: ImageManager.emailIcon,
                ),
                SizedBox(height: 14),
                CustomTextFeild(
                  controler: context.read<Signupcubit>().signUpPassword,
                  labelText: Textconst.passWordLabel,
                  height: 16,
                  wigeth: 16,
                  hintText: '•••••••••••',

                  assetImage: ImageManager.passwordIcon,
                ),
                SizedBox(height: 14),
                CustomTextFeild(
                  controler: context.read<Signupcubit>().confirmPassword,
                  labelText: Textconst.confermpassTextfieldLabel,
                  height: 16,
                  wigeth: 16,
                  hintText: '•••••••••••',

                  assetImage: ImageManager.passwordIcon,
                ),
                SizedBox(height: 14),
                RowRememberandforget(),
                SizedBox(height: 14),

                state is SignupLoading
                    ? CircularProgressIndicator()
                    : Custtombuttonnext(
                        onTap: () {
                          BlocProvider.of<Signupcubit>(context).signup();
                        },
                        text: Textconst.signIn,
                      ),
                SizedBox(height: 16),
                Text(
                  Textconst.continueWith,
                  style: AppTextSyles.textpopns12Color,
                ),
                SizedBox(height: 16),
                // SocialMediaButton(),
                SizedBox(height: 14),
              ],
            ),
          ),
        );
      },
    );
  }
}
