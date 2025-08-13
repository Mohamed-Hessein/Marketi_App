import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketia/Features/Auth/data/Repo/Auth_repo.dart';
import 'package:marketia/Features/Auth/data/Repo/SigninModel.dart';
import 'package:marketia/Features/Auth/data/Repo/SignupModel.dart';
import 'package:marketia/Features/Auth/data/Repo/active_code_reset_model.dart';
import 'package:marketia/Features/Auth/data/Repo/resetcodeMode.dart';
import 'package:marketia/core/network/APi_consumer.dart';
import 'package:marketia/core/network/cachehelper.dart';
import 'package:marketia/core/network/endpoints.dart';
import 'package:marketia/Features/Auth/data/ViewModel/VM/signupstate.dart';
import 'package:dio/dio.dart';
import 'package:marketia/core/Errors/ErrorModel.dart';
import 'package:marketia/core/Errors/execption.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class Signupcubit extends Cubit<Signupstate> {
  Signupcubit(super.initialState, this.authRepo);

  TextEditingController signUpName = TextEditingController();

  //Sign up p
  TextEditingController feildsCOdeController = TextEditingController();

  TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();
  LoginResponse? loginResponse;
  Signupmodel? signupmodel;

  final AuthRepo authRepo;
  signup() async {
    Signupmodel signupmodel;

    emit(SignupLoading());
    final response = await authRepo.signUp(
      email: signUpEmail.text,
      phone: signUpPhoneNumber.text,
      password: signUpPassword.text,
      name: signUpName.text,
      confrimPassword: confirmPassword.text,
    );
    response.fold(
      (errMessage) => emit(SignupError(ERRmessage: errMessage)),
      (signiNmodel) => emit(SignupSecuss(message: signiNmodel.message)),
    );
  }

  signin() async {
    emit(SignInLoading());

    final response = await authRepo.signIn(
      password: signUpPassword.text,
      email: signUpEmail.text,
    );
    response.fold(
      (errMessage) => emit(SignInError(ERRmessage: errMessage)),
      (signiNmodel) => emit(SignInSecuss()),
    );
  }

  resetcode() async {
    emit(ResetCodeLoading());
    final response = await authRepo.resetCode(email: signUpEmail.text);
    response.fold(
      (errMessage) => (emit(ResetCodeError(ERRmessage: errMessage))),
      (resetCode) => emit(ResetCodeSecuss()),
    );
  }

  activeCode() async {
    emit(AcvtiveResetCodeLoading());
    final response = await authRepo.enterCode(
      email: signUpEmail.text,
      code: feildsCOdeController.text,
    );
    response.fold(
      (errMessage) => emit(AcvtiveResetCodeError(ERRmessage: errMessage)),
      (actvecode) => emit(AcvtiveResetCodeLSecuess()),
    );
  }

  changePassword() async {
    emit(ChangePassLoading());
    final response = await authRepo.changePass(
      email: signUpEmail.text,
      password: signUpPassword.text,
      confrimpass: confirmPassword.text,
    );
    response.fold(
      (errMessage) => emit(ChangePassError(ERRmessage: errMessage)),
      (actvecode) => emit(ChangePassLSecuess()),
    );
  }
}
