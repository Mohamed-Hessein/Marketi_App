import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/Login.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/Signup.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/changepassword.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/congr.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/entercode.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/entercodebyemail.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/forgotPassword.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/forgotpasswordbyemail.dart';
import 'package:marketia/Features/OnBording/Persention/view/screens/onbordingpage.dart';
import 'package:marketia/Features/Splash/Persention/view/Screens/splach_body.dart';

class Approuter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/onbording':
        return MaterialPageRoute(builder: (_) => const onbordingpage());
      case '/login':
        return MaterialPageRoute(builder: (_) => const Login());
      case '/forgtepass':
        return MaterialPageRoute(builder: (_) => const Forgotpassword());
      case '/forgtepassmail':
        return MaterialPageRoute(builder: (_) => const Forgotpasswordbyemail());
      case '/returnforgtepass':
        return MaterialPageRoute(builder: (_) => const Login());
      case '/returnforgtepassmail':
        return MaterialPageRoute(builder: (_) => const Forgotpassword());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const Signup());
      case '/Entercodebyphonebody':
        return MaterialPageRoute(builder: (_) => const Entercode());
      case '/Entercodebyemailbody':
        return MaterialPageRoute(builder: (_) => const Entercodebyemail());
      case '/createnewpassword':
        return MaterialPageRoute(builder: (_) => const Changepassword());
      case '/congra':
        return MaterialPageRoute(builder: (_) => const Congr());
      default:
        return MaterialPageRoute(builder: (_) => const SplachBody());
    }
  }
}
