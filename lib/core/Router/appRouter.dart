import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/login/Login.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/signup/Signup.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/changepassword/changepassword.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/congratules/congr.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/getcode/entercode.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/getcode/entercodebyemail.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/forgotpassword/forgotPassword.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/forgotpassword/forgotpasswordbyemail.dart';
import 'package:marketia/Features/Auth/data/Repo/Auth_repo.dart';
import 'package:marketia/Features/Auth/data/Repo/signupModel.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupcubit.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupstate.dart';
import 'package:marketia/Features/OnBording/Persention/view/screens/onbordingpage.dart';
import 'package:marketia/Features/Splash/Persention/view/Screens/splach_body.dart';
import 'package:marketia/core/Network/APi_consumer.dart';
import 'package:marketia/core/network/Dio_consumer.dart';

class Approuter {
  static const logIn = '/login';
  static const onBording = '/onbording';
  static const signUp = '/signup';
  static const forgotPasswordEmail = '/forgtepassmail';
  static const changePass = '/createnewpassword';
  static const forgotPasswordPhone = '/forgtepass';
  static const enterCode = '/Entercodebyemailbody';
  static const congra = '/congra';
  static const returnPassword = '/returnforgtepass';
  static const enterCodoPhone = '/Entercodebyphonebody';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBording:
        return MaterialPageRoute(builder: (_) => const onbordingpage());
      case logIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                Signupcubit(SignIninitial(), AuthRepo(DioConsumer(dio: Dio()))),

            child: const Login(),
          ),
        );
      case forgotPasswordPhone:
        return MaterialPageRoute(builder: (_) => const Forgotpassword());
      case forgotPasswordEmail:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => Signupcubit(
              ResetCodeinitial(),
              AuthRepo(DioConsumer(dio: Dio())),
            ),
            child: const Forgotpasswordbyemail(),
          ),
        );
      case returnPassword:
        return MaterialPageRoute(builder: (_) => const Login());
      case '/returnforgtepassmail':
        return MaterialPageRoute(builder: (_) => const Forgotpassword());
      case signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                Signupcubit(Signupinitial(), AuthRepo(DioConsumer(dio: Dio()))),
            child: const Signup(),
          ),
        );
      case enterCodoPhone:
        return MaterialPageRoute(builder: (_) => const Entercode());
      case enterCode:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => Signupcubit(
              AcvtiveResetCodeinitial(),
              AuthRepo(DioConsumer(dio: Dio())),
            ),
            child: const Entercodebyemail(),
          ),
        );
      case changePass:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => Signupcubit(
              ChangePassinitial(),
              AuthRepo(DioConsumer(dio: Dio())),
            ),
            child: const Changepassword(),
          ),
        );
      case congra:
        return MaterialPageRoute(builder: (_) => const Congr());
      default:
        return MaterialPageRoute(builder: (_) => const SplachBody());
    }
  }
}
