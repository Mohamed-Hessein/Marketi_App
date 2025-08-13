import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/customTextfeild.dart';
import 'package:marketia/Features/Auth/Persention/view/widgets/remeberandforgot.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupcubit.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupstate.dart';
import 'package:marketia/Features/OnBording/Persention/view/widgets/custtomButtonNext.dart';
import 'package:marketia/core/Router/appRouter.dart';
import 'package:marketia/core/constant/Textconst/textconst.dart';
import 'package:marketia/core/constant/image_manager/image_manager.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Loginbody extends StatelessWidget {
  const Loginbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Signupcubit, Signupstate>(
      listener: (context, state) {
        if (state is SignInSecuss) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('secuesss')));
          Navigator.pushNamed(context, Approuter.forgotPasswordEmail);
        } else if (state is SignInError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state!.ERRmessage)));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(ImageManager.marktiaLogo, width: 272, height: 232),
                SizedBox(height: 32),
                CustomTextFeild(
                  controler: context.read<Signupcubit>().signUpEmail,
                  labelText: Textconst.emaillabel,
                  wigeth: 5,
                  height: 5,
                  hintText: Textconst.emailTextHint,
                  assetImage: ImageManager.emailIcon,
                ),
                SizedBox(height: 14),
                CustomTextFeild(
                  controler: context.read<Signupcubit>().signUpPassword,
                  height: 5,
                  wigeth: 5,
                  hintText: '•••••••••••',
                  labelText: Textconst.passWordLabel,
                  assetImage: ImageManager.passwordIcon,
                ),
                RowRememberandforget(),
                SizedBox(height: 20),
                state is SignInLoading
                    ? CircularProgressIndicator()
                    : Custtombuttonnext(
                        onTap: () {
                          context.read<Signupcubit>().signin();
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
                Textaryoueloginorsign(or: 'register?'),
              ],
            ),
          ),
        );
      },
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
            Navigator.pushNamed(context, Approuter.signUp);
          },
          child: Text(or, style: AppTextSyles.textpopns12forgotColor),
        ),
      ],
    );
  }
}
